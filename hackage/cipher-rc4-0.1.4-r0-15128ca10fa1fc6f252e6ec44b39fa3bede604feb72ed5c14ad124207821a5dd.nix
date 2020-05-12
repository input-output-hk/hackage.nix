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
      identifier = { name = "cipher-rc4"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-cipher-rc4";
      url = "";
      synopsis = "Fast RC4 cipher implementation";
      description = "Fast RC4 cipher implementation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
          ];
        buildable = true;
        };
      tests = {
        "test-cipher-rc4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cipher-rc4" or (errorHandler.buildDepError "cipher-rc4"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
            (hsPkgs."crypto-cipher-tests" or (errorHandler.buildDepError "crypto-cipher-tests"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-cipher-rc4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cipher-rc4" or (errorHandler.buildDepError "cipher-rc4"))
            (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
            (hsPkgs."crypto-cipher-benchmarks" or (errorHandler.buildDepError "crypto-cipher-benchmarks"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }