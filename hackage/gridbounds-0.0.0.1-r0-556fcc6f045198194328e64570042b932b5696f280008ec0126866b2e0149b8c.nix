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
      identifier = { name = "gridbounds"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "firas@zaidan.de";
      author = "Firas Zaidan";
      homepage = "https://github.com/zaidan/gridbounds#readme";
      url = "";
      synopsis = "Collision detection for GridBox";
      description = "This package adds collision detection to GridBox. It is based on Earclipper and GJK.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gridbox" or (errorHandler.buildDepError "gridbox"))
          (hsPkgs."earclipper" or (errorHandler.buildDepError "earclipper"))
          (hsPkgs."gjk" or (errorHandler.buildDepError "gjk"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gridbox" or (errorHandler.buildDepError "gridbox"))
            (hsPkgs."earclipper" or (errorHandler.buildDepError "earclipper"))
            (hsPkgs."gjk" or (errorHandler.buildDepError "gjk"))
            (hsPkgs."gridbounds" or (errorHandler.buildDepError "gridbounds"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }