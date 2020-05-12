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
      identifier = { name = "bitcoin-types"; version = "0.9.1"; };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Provides consistent low-level types used commonly among Bitcoin implementations";
      description = "Instead of having each Bitcoin library re-define the low level types it is using,\nthis library provides a ready-to-use collection of low-level types and aliases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."hexstring" or (errorHandler.buildDepError "hexstring"))
          (hsPkgs."base58string" or (errorHandler.buildDepError "base58string"))
          ];
        buildable = true;
        };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base58string" or (errorHandler.buildDepError "base58string"))
            (hsPkgs."hexstring" or (errorHandler.buildDepError "hexstring"))
            (hsPkgs."bitcoin-types" or (errorHandler.buildDepError "bitcoin-types"))
            ];
          buildable = true;
          };
        };
      };
    }