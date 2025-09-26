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
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "gh"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2025 Juspay";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://github.com/juspay/vira/tree/main/packages/gh";
      url = "";
      synopsis = "Haskell bindings for gh CLI";
      description = "A standalone library for gh CLI operations";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."which" or (errorHandler.buildDepError "which"))
        ];
        buildable = true;
      };
      exes = {
        "gh-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gh" or (errorHandler.buildDepError "gh"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."which" or (errorHandler.buildDepError "which"))
          ];
          buildable = true;
        };
      };
    };
  }