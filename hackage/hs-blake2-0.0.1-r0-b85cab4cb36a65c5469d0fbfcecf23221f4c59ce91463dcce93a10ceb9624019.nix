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
      identifier = { name = "hs-blake2"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tsuraan@gmail.com";
      author = "jay groven";
      homepage = "";
      url = "";
      synopsis = "A cryptohash-inspired library for blake2";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."b2" or (errorHandler.sysDepError "b2")) ];
        buildable = true;
        };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-arbitrary" or (errorHandler.buildDepError "bytestring-arbitrary"))
            (hsPkgs."hs-blake2" or (errorHandler.buildDepError "hs-blake2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          libs = [ (pkgs."b2" or (errorHandler.sysDepError "b2")) ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark-all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."hs-blake2" or (errorHandler.buildDepError "hs-blake2"))
            ];
          libs = [ (pkgs."b2" or (errorHandler.sysDepError "b2")) ];
          buildable = true;
          };
        };
      };
    }