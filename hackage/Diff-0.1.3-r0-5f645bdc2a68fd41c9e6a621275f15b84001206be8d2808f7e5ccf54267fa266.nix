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
    flags = { small-base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Diff"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.clover@gmail.com";
      author = "Sterling Clover";
      homepage = "";
      url = "";
      synopsis = "O(ND) diff algorithm in haskell.";
      description = "Basic implementation of the standard diff algorithm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.small-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }