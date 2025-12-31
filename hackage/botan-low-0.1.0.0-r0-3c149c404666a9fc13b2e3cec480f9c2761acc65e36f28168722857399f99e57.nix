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
      specVersion = "3.0";
      identifier = { name = "botan-low"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2023-2024, Apotheca Labs\nCopyright (c) 2024-2025, Haskell Foundation";
      maintainer = "joris@well-typed.com, leo@apotheca.io";
      author = "Leo D.";
      homepage = "";
      url = "";
      synopsis = "Low-level Botan bindings";
      description = "Welcome to botan-low\n\nLow-level bindings to the [Botan](https://botan.randombit.net/) cryptography library.\n\n> Botan's goal is to be the best option for cryptography in C++ by offering the\n> tools necessary to implement a range of practical systems, such as TLS protocol,\n> X.509 certificates, modern AEAD ciphers, PKCS#11 and TPM hardware support,\n> password hashing, and post quantum crypto schemes.\n\nFor more information, see the [README on Github](https://github.com/haskell-cryptography/botan)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."botan-bindings" or (errorHandler.buildDepError "botan-bindings"))
            (hsPkgs."botan-low" or (errorHandler.buildDepError "botan-low"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }