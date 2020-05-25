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
      specVersion = "1.22";
      identifier = { name = "crypto-sodium"; version = "0.0.2.0"; };
      license = "MPL-2.0";
      copyright = "2020 Serokell";
      maintainer = "Kirill Elagin <kirelagin@serokell.io>";
      author = "Kirill Elagin <kirelagin@serokell.io>";
      homepage = "https://github.com/serokell/haskell-crypto#readme";
      url = "";
      synopsis = "Easy-and-safe-to-use high-level cryptography based on Sodium";
      description = "This is a collection of high-level cryptographic primitives based on\n<https://libsodium.io/ Sodium>, spiced up with extra type-safety\nof the Haskell type system.\n\n__Note: this package is experimental and WIP.__\n\n= Why\n\nCryptography is hard to do right and you should never try to implement it\non your own, even if you have access to safe and secure cryptographic\nprimitives. Luckily, D. J. Bernstein created <https://nacl.cr.yp.to/ NaCl>.\n\nNaCl was designed specifically to make it hard to use it incorrectly and\nthus save you from a disaster. It exposes high-level cryptographic\nalgorithms with underlying implementations chosen for you, so you do not\nget flexibility, but you get security, which is more important.\n\n= What\n\n<https://libsodium.org Sodium> is a reimplementation of NaCl\nwith the goal to make it more portable across different platforms.\nWith time, it started providing more than the same interface as NaCl.\nNowadays it implements additional primitives and utility functions.\n\n= How\n\n== Secret-key cryptography\n\n* Authenticated encryption: \"Crypto.Secretbox\"\n* Encryption: \"Crypto.Stream\"\n* Authentication: \"Crypto.Auth\"\n\n\n= Thread-safety #threadSafety#\n\nSome of the Sodium (and NaCl) functions (those that generate random data)\nare not thread-safe. All these functions are explicitly marked as such\nin their Haddock documentation.\n\nCalling 'sodiumInit' before they are used makes them thread-safe, see\n\"Crypto.Init\".\n\n= Performance\n\nSodium contains multiple implementations of the primitives it provides.\nThere are generic implementations, that are used by default, and\nmultiple alternatives optimised for various platforms.\n\n'sodiumInit' will quickly benchmark all available implementations and choose\nthe bests ones for each primitive, see \"Crypto.Init\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."NaCl" or (errorHandler.buildDepError "NaCl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."gdp" or (errorHandler.buildDepError "gdp"))
          (hsPkgs."libsodium" or (errorHandler.buildDepError "libsodium"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-sodium" or (errorHandler.buildDepError "crypto-sodium"))
            (hsPkgs."libsodium" or (errorHandler.buildDepError "libsodium"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }