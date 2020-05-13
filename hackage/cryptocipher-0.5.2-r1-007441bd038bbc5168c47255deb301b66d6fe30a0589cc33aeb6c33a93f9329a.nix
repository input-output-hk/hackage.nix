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
    flags = { benchmark = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "cryptocipher"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-cipher";
      url = "";
      synopsis = "Symmetrical block and stream ciphers.";
      description = "Symmetrical block and stream ciphers.\n\nThis package is eventually going away in this form, and should be considered deprecated.\nuse 'cipher-aes' for AES. For blowfish, camellia, DES/3DES, the package is still maintained,\nbut eventually each cipher will be available in another package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
          (hsPkgs."cipher-rc4" or (errorHandler.buildDepError "cipher-rc4"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
        buildable = true;
        };
      exes = {
        "Benchmarks" = {
          depends = (pkgs.lib).optionals (flags.benchmark) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."cryptocipher" or (errorHandler.buildDepError "cryptocipher"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = if flags.benchmark then true else false;
          };
        };
      tests = {
        "test-cryptocipher" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."cryptocipher" or (errorHandler.buildDepError "cryptocipher"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }