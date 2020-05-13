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
    flags = { test = false; halvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cipher-aes128"; version = "0.7.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Thomas M. DuBuisson";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson, Vincent Hanquez (See AUTHORS file)";
      homepage = "https://github.com/TomMD/cipher-aes128";
      url = "";
      synopsis = "AES and common modes using AES-NI when available.";
      description = "Cipher-aes128 is an implementation of AES and common modes of operation.  It borrows Hanquez's C AES code (see 'cipher-aes') but\nis unique due to including compile-time detection of\nNI compiler support, a slightly more functional interface\nfor GCM operations, exposure of 'Ptr' based operations via the .Internal module, and build-in crypto-api support.\nCipher-aes128 was originally developed as \"'cipher-aes' plus trampolines\", which has since been adopted into cipher-aes.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.buildToolDepError "process")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
        buildable = true;
        };
      exes = {
        "aes128_test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."crypto-api-tests" or (errorHandler.buildDepError "crypto-api-tests"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."cipher-aes128" or (errorHandler.buildDepError "cipher-aes128"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            ];
          buildable = true;
          };
        };
      };
    }