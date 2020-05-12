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
      specVersion = "1.8";
      identifier = { name = "hatt"; version = "1.5.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Benedict Eastaugh";
      maintainer = "benedict@eastaugh.net";
      author = "Benedict Eastaugh";
      homepage = "http://extralogical.net/projects/hatt";
      url = "";
      synopsis = "A truth table generator for classical propositional logic.";
      description = "Hatt is a command-line program which prints truth tables\nfor expressions in classical propositional logic, and a\nlibrary allowing its parser, evaluator and truth table\ngenerator to be used in other programs. It includes support\nfor converting logical expressions into several normal\nforms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          ];
        buildable = true;
        };
      exes = {
        "hatt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hatt" or (errorHandler.buildDepError "hatt"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-hatt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hatt" or (errorHandler.buildDepError "hatt"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }