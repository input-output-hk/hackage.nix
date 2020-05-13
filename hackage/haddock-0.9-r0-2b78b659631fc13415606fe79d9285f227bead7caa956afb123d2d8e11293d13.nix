{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "haddock"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow";
      maintainer = "Simon Marlow <simonmar@microsoft.com>";
      author = "Simon Marlow";
      homepage = "http://www.haskell.org/haddock/";
      url = "";
      synopsis = "Haddock is a documentation-generation tool for Haskell libraries";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "haddock" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        };
      };
    }