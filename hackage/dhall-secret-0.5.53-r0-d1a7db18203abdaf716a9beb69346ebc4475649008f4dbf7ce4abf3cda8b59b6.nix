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
      identifier = { name = "dhall-secret"; version = "0.5.53"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oyanglulu@gmail.com";
      author = "Jichao Ouyang";
      homepage = "https://github.com/jcouyang/dhall-secret";
      url = "";
      synopsis = "Encrypt Decrypt Dhall expressions";
      description = "A simple tool to manage secrets in Dhall configuration";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."amazonka-kms" or (errorHandler.buildDepError "amazonka-kms"))
          (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
          (hsPkgs."bech32" or (errorHandler.buildDepError "bech32"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          ];
        buildable = true;
        };
      exes = {
        "dhall-secret" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dhall-secret" or (errorHandler.buildDepError "dhall-secret"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."amazonka-kms" or (errorHandler.buildDepError "amazonka-kms"))
            (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
            (hsPkgs."bech32" or (errorHandler.buildDepError "bech32"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "dhall-secret-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dhall-secret" or (errorHandler.buildDepError "dhall-secret"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."amazonka-kms" or (errorHandler.buildDepError "amazonka-kms"))
            (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
            (hsPkgs."bech32" or (errorHandler.buildDepError "bech32"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            ];
          buildable = true;
          };
        };
      };
    }