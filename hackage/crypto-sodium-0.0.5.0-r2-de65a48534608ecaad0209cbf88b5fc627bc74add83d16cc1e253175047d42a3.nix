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
      specVersion = "1.18";
      identifier = { name = "crypto-sodium"; version = "0.0.5.0"; };
      license = "MPL-2.0";
      copyright = "2021 Serokell";
      maintainer = "Serokell <libraries@serokell.io>";
      author = "Kirill Elagin <kirelagin@serokell.io>";
      homepage = "https://github.com/serokell/haskell-crypto#readme";
      url = "";
      synopsis = "Easy-and-safe-to-use high-level cryptography based on Sodium";
      description = "This is a collection of high-level cryptographic primitives based on\n<https://libsodium.io/ Sodium>, spiced up with extra type-safety\nof the Haskell type system.\n\n__Note: this package is experimental and WIP.__\n\n= Why\n\nCryptography is hard to do right and you should never try to implement it\non your own, even if you have access to safe and secure cryptographic\nprimitives. Luckily, D. J. Bernstein created <https://nacl.cr.yp.to/ NaCl>.\n\nNaCl was designed specifically to make it hard to use it incorrectly and\nthus save you from a disaster. It exposes high-level cryptographic\nalgorithms with underlying implementations chosen for you, so you do not\nget flexibility, but you get security, which is more important.\n\n= What\n\n<https://libsodium.org Sodium> is a reimplementation of NaCl\nwith the goal to make it more portable across different platforms.\nWith time, it started providing more than the same interface as NaCl.\nNowadays it implements additional primitives and utility functions.\n\n= How\n\n== Library initialisation\n\n* \"Crypto.Sodium.Init\"\n\n== Secret-key cryptography\n\n* Authenticated symmetric-key encryption: \"Crypto.Sodium.Encrypt.Symmetric\"\n* Message authentication codes: \"Crypto.Sodium.Mac\"\n\n== Public-key cryptography\n\n* Authenticated public-key encryption: \"Crypto.Sodium.Encrypt.Public\"\n* Public-key signatures: \"Crypto.Sodium.Sign\"\n\n== Additional primitives\n\n* Key derivation and generation: \"Crypto.Sodium.Key\"\n* Cryptographically-secure random: \"Crypto.Sodium.Random\"\n* Hashing: \"Crypto.Sodium.Hash\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."NaCl" or (errorHandler.buildDepError "NaCl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."libsodium" or (errorHandler.buildDepError "libsodium"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-sodium" or (errorHandler.buildDepError "crypto-sodium"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."libsodium" or (errorHandler.buildDepError "libsodium"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }