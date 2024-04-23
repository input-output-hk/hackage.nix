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
      identifier = { name = "alex"; version = "2.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Chis Dornan, Simon Marlow";
      maintainer = "Simon Marlow <simonmar@microsoft.com>";
      author = "Chris Dornan and Simon Marlow";
      homepage = "http://www.haskell.org/alex/";
      url = "";
      synopsis = "Alex is a tool for generating lexical analysers in Haskell";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "alex" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
        };
      };
    };
  }