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
      identifier = { name = "padic"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2022 Sergey B. Samoylenko";
      maintainer = "samsergey@yandex.ru";
      author = "Sergey B. Samoylenko <samsergey@yandex.ru>";
      homepage = "https://github.com/samsergey/padic-0.1.0.0";
      url = "";
      synopsis = "Fast, type-safe p-adic arithmetic";
      description = "Implementation of p-adic arithmetics on the base of fast modular arithmetics. Module introduces data types for p-adic integers and rationals with arbitrary precision as well as some specific functions (rational reconstruction, p-adic signum function, square roots etc.).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
        ];
        buildable = true;
      };
      tests = {
        "padic-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
            (hsPkgs."padic" or (errorHandler.buildDepError "padic"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "criterion-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
            (hsPkgs."padic" or (errorHandler.buildDepError "padic"))
          ];
          buildable = true;
        };
      };
    };
  }