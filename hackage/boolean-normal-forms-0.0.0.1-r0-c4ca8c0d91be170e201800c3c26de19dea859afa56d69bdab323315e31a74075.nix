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
      identifier = { name = "boolean-normal-forms"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "© Oleg Grenrus 2014";
      maintainer = "oleg.grenrus@iki.fi";
      author = "Oleg Grenrus";
      homepage = "";
      url = "";
      synopsis = "Boolean normal form: NNF, DNF & CNF";
      description = "The provided types that might be useful in symbolic manipulation of propositional logic expressions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."boolean-normal-forms" or (errorHandler.buildDepError "boolean-normal-forms"))
            ];
          buildable = true;
          };
        };
      };
    }