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
      identifier = { name = "gjk2d"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Suzumiya";
      maintainer = "suzumiyasmith@gmail.com";
      author = "Suzumiya";
      homepage = "https://github.com/suzumiyasmith/gjk2d#readme";
      url = "";
      synopsis = "";
      description = "Yet another 2D GJK collision dection algorithm with Linear";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          ];
        buildable = true;
        };
      tests = {
        "gjk2d-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."gjk2d" or (errorHandler.buildDepError "gjk2d"))
            ];
          buildable = true;
          };
        };
      };
    }