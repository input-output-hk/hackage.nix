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
      identifier = { name = "bitcoin-api"; version = "0.12.0"; };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Provides access to the RPC API of Bitcoin Core";
      description = "The Bitcoin Core application provides an HTTP RPC interface for communication.\nThis library implements access to these functions. It builds on top of the\n`bitcoin-tx` and `bitcoin-script`, and as such provides an extremely flexible\nenvironment to create, manipulate and store transactions and custom scripts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."hexstring" or (errorHandler.buildDepError "hexstring"))
          (hsPkgs."base58string" or (errorHandler.buildDepError "base58string"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."bitcoin-types" or (errorHandler.buildDepError "bitcoin-types"))
          (hsPkgs."bitcoin-block" or (errorHandler.buildDepError "bitcoin-block"))
          (hsPkgs."bitcoin-tx" or (errorHandler.buildDepError "bitcoin-tx"))
          (hsPkgs."bitcoin-script" or (errorHandler.buildDepError "bitcoin-script"))
          ];
        buildable = true;
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base58string" or (errorHandler.buildDepError "base58string"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bitcoin-tx" or (errorHandler.buildDepError "bitcoin-tx"))
            (hsPkgs."bitcoin-script" or (errorHandler.buildDepError "bitcoin-script"))
            (hsPkgs."bitcoin-api" or (errorHandler.buildDepError "bitcoin-api"))
            ];
          buildable = true;
          };
        };
      };
    }