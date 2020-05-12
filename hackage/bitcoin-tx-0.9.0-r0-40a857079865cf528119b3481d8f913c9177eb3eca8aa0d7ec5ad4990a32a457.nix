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
      identifier = { name = "bitcoin-tx"; version = "0.9.0"; };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Utility functions for manipulating bitcoin transactions";
      description = "This library provides the same functionality as the bitcoin-tx command line\nutility, which was introduced in Bitcoin Core v0.10. These functions are\npure and require no communication with a bitcoin daemon.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bitcoin-script" or (errorHandler.buildDepError "bitcoin-script"))
          ];
        buildable = true;
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bitcoin-tx" or (errorHandler.buildDepError "bitcoin-tx"))
            (hsPkgs."bitcoin-script" or (errorHandler.buildDepError "bitcoin-script"))
            ];
          buildable = true;
          };
        };
      };
    }