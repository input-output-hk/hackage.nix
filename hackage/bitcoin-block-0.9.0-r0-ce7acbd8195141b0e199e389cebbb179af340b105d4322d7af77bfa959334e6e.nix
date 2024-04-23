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
      identifier = { name = "bitcoin-block"; version = "0.9.0"; };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Utility functions for manipulating bitcoin blocks";
      description = "This library provides functionality for parsing, inspecting,\nhashing and serialization of bitcoin blocks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."hexstring" or (errorHandler.buildDepError "hexstring"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."largeword" or (errorHandler.buildDepError "largeword"))
          (hsPkgs."bitcoin-tx" or (errorHandler.buildDepError "bitcoin-tx"))
          (hsPkgs."bitcoin-types" or (errorHandler.buildDepError "bitcoin-types"))
        ];
        buildable = true;
      };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hexstring" or (errorHandler.buildDepError "hexstring"))
            (hsPkgs."bitcoin-tx" or (errorHandler.buildDepError "bitcoin-tx"))
            (hsPkgs."bitcoin-types" or (errorHandler.buildDepError "bitcoin-types"))
            (hsPkgs."bitcoin-block" or (errorHandler.buildDepError "bitcoin-block"))
          ];
          buildable = true;
        };
      };
    };
  }