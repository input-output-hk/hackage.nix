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
      identifier = { name = "light"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Suzumiya";
      maintainer = "suzumiyasmith@gmail.com";
      author = "Suzumiya";
      homepage = "https://github.com/suzumiyasmith/light#readme";
      url = "";
      synopsis = "a simple physics engine";
      description = "A simple physics engine(dynamics only) with collision dection";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."gjk2d" or (errorHandler.buildDepError "gjk2d"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "light-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."light" or (errorHandler.buildDepError "light"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }