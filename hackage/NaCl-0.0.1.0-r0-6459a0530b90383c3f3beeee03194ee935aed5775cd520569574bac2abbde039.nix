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
      identifier = { name = "NaCl"; version = "0.0.1.0"; };
      license = "MPL-2.0";
      copyright = "2020 Serokell";
      maintainer = "Kirill Elagin <kirelagin@serokell.io>";
      author = "Kirill Elagin <kirelagin@serokell.io>";
      homepage = "https://github.com/serokell/haskell-nacl#readme";
      url = "";
      synopsis = "Easy-and-safe-to-use library for cryptography";
      description = "This library uses <https://libsodium.org Sodium> under the hood,\nbut only exposes the primitives that are part of the “classic” NaCl\ninterface. We believe, it is better to be paranoid than sorry.\n\n__Note: this package is experimental and WIP.__\n\n= Secret-key cryptography\n\n* Authenticated encryption: \"Crypto.Secretbox\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."gdp" or (errorHandler.buildDepError "gdp"))
          (hsPkgs."libsodium" or (errorHandler.buildDepError "libsodium"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."NaCl" or (errorHandler.buildDepError "NaCl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."libsodium" or (errorHandler.buildDepError "libsodium"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }