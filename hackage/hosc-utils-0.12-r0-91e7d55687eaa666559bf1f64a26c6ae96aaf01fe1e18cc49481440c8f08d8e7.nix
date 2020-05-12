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
      identifier = { name = "hosc-utils"; version = "0.12"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Stefan Kersten and others, 2006-2012";
      maintainer = "rd@slavepianos.org";
      author = "Stefan Kersten";
      homepage = "http://rd.slavepianos.org/?t=hosc-utils";
      url = "";
      synopsis = "Haskell Open Sound Control Utilities";
      description = "hosc-utils";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hosc-utils-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hosc-utils-test" = {
          depends = [
            (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }