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
      specVersion = "1.8";
      identifier = { name = "honi"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Patrick Chilton, Niklas Hambüchen";
      maintainer = "Patrick Chilton <chpatrick@gmail.com>, Niklas Hambüchen <niklas@nh2.me>";
      author = "Patrick Chilton, Niklas Hambüchen";
      homepage = "";
      url = "";
      synopsis = "OpenNI 2 binding";
      description = "OpenNI 2 binding";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."OpenNI2" or (errorHandler.sysDepError "OpenNI2"))
          (pkgs."freenect" or (errorHandler.sysDepError "freenect"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."honi" or (errorHandler.buildDepError "honi"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          libs = [
            (pkgs."OpenNI2" or (errorHandler.sysDepError "OpenNI2"))
            (pkgs."freenect" or (errorHandler.sysDepError "freenect"))
            ];
          buildable = true;
          };
        };
      };
    }