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
      identifier = { name = "saltine-quickcheck"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tsuraan@gmail.com";
      author = "Jay Groven";
      homepage = "https://github.com/tsuraan/saltine-quickcheck";
      url = "";
      synopsis = "Quickcheck implementations for some NaCl data";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-arbitrary" or (errorHandler.buildDepError "bytestring-arbitrary"))
          (hsPkgs."hex" or (errorHandler.buildDepError "hex"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."saltine" or (errorHandler.buildDepError "saltine"))
          ];
        libs = [ (pkgs."sodium" or (errorHandler.sysDepError "sodium")) ];
        buildable = true;
        };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring-arbitrary" or (errorHandler.buildDepError "bytestring-arbitrary"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."saltine" or (errorHandler.buildDepError "saltine"))
            (hsPkgs."saltine-quickcheck" or (errorHandler.buildDepError "saltine-quickcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }