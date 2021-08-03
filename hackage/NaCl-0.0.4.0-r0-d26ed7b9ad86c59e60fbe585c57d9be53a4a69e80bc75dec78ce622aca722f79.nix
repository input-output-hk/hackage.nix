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
      identifier = { name = "NaCl"; version = "0.0.4.0"; };
      license = "MPL-2.0";
      copyright = "2021 Serokell";
      maintainer = "Serokell <libraries@serokell.io>";
      author = "Kirill Elagin <kirelagin@serokell.io>";
      homepage = "https://github.com/serokell/haskell-crypto#readme";
      url = "";
      synopsis = "Easy-and-safe-to-use high-level Haskell bindings to NaCl";
      description = "This library uses <https://libsodium.org Sodium> under the hood,\nbut only exposes the primitives that are part of the “classic” NaCl\ninterface. We believe, it is better to be paranoid than sorry.\n\n__Note: this package is experimental and WIP.__\n\nSodium is more portable, but some people prefer to stick to NaCl.\nWe agree that it is better to be paranoid than sorry.\nThat is why, even though this library uses\nSodium under the hood, it only exposes the primitives that\nare part of the “classic” NaCl interface.\n\nSodium provides useful algorithms, that are not part of NaCl,\nfor example key derivation or random number generation.\nIf you need them too (you probably do), you should use\n</package/crypto-sodium crypto-sodium> instead.\n\n= Public-key cryptography\n\n* Authenticated encryption: \"NaCl.Box\"\n* Scalar multiplication: \"NaCl.Scalarmult\"\n* Public-key signatures: \"NaCl.Sign\"\n\n= Secret-key cryptography\n\n* Authenticated encryption: \"NaCl.Secretbox\"\n* Unauthenticated streaming encryption: \"NaCl.Stream\"\n* Authentication: \"NaCl.Auth\"\n\n= Low-level functions\n\n* Hashing: \"NaCl.Hash\"\n* String comparison: \"NaCl.Verify\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
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
            (hsPkgs."NaCl" or (errorHandler.buildDepError "NaCl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."libsodium" or (errorHandler.buildDepError "libsodium"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover.components.exes.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }