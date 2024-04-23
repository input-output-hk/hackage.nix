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
      identifier = { name = "turingMachine"; version = "1.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) Jorge Santiago Alvarez Cuadros";
      maintainer = "sanjorgek@ciencias.unam.mx";
      author = "Jorge Santiago Alvarez Cuadros";
      homepage = "https://github.com/sanjorgek/turingMachine";
      url = "";
      synopsis = "An implementation of Turing Machine and Automaton";
      description = "An implementation of Turing Machine and Automaton for\nlanguage theory";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "state" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspecVariant" or (errorHandler.buildDepError "hspecVariant"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."QuickCheckVariant" or (errorHandler.buildDepError "QuickCheckVariant"))
            (hsPkgs."turingMachine" or (errorHandler.buildDepError "turingMachine"))
          ];
          buildable = true;
        };
        "sigma" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspecVariant" or (errorHandler.buildDepError "hspecVariant"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."QuickCheckVariant" or (errorHandler.buildDepError "QuickCheckVariant"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."turingMachine" or (errorHandler.buildDepError "turingMachine"))
          ];
          buildable = true;
        };
        "finite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspecVariant" or (errorHandler.buildDepError "hspecVariant"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."QuickCheckVariant" or (errorHandler.buildDepError "QuickCheckVariant"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."turingMachine" or (errorHandler.buildDepError "turingMachine"))
          ];
          buildable = true;
        };
      };
    };
  }