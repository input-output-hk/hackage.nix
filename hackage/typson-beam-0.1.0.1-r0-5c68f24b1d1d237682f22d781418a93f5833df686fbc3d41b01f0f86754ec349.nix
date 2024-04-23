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
      specVersion = "1.12";
      identifier = { name = "typson-beam"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Aaron Allen";
      maintainer = "aaronallen8455@gmail.com";
      author = "Aaron Allen";
      homepage = "https://github.com/aaronallen8455/typson#readme";
      url = "";
      synopsis = "Typson Beam Integration";
      description = "Please see the README on GitHub at <https://github.com/aaronallen8455/typson#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
          (hsPkgs."beam-postgres" or (errorHandler.buildDepError "beam-postgres"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."typson-core" or (errorHandler.buildDepError "typson-core"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
            (hsPkgs."beam-migrate" or (errorHandler.buildDepError "beam-migrate"))
            (hsPkgs."beam-postgres" or (errorHandler.buildDepError "beam-postgres"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."test-fixture" or (errorHandler.buildDepError "test-fixture"))
            (hsPkgs."typson-beam" or (errorHandler.buildDepError "typson-beam"))
            (hsPkgs."typson-core" or (errorHandler.buildDepError "typson-core"))
          ];
          buildable = true;
        };
      };
    };
  }