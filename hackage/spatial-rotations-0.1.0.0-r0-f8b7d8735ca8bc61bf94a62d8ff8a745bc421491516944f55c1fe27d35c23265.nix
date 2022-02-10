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
      specVersion = "1.10";
      identifier = { name = "spatial-rotations"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsagemue $ uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/rotations";
      url = "";
      synopsis = "Rotate about any suitable axis";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."manifolds-core" or (errorHandler.buildDepError "manifolds-core"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."manifolds" or (errorHandler.buildDepError "manifolds"))
            (hsPkgs."pragmatic-show" or (errorHandler.buildDepError "pragmatic-show"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            (hsPkgs."spatial-rotations" or (errorHandler.buildDepError "spatial-rotations"))
            ];
          buildable = true;
          };
        };
      };
    }