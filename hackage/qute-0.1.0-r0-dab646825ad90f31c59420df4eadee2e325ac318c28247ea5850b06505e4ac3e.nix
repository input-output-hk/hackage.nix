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
      specVersion = "3.4";
      identifier = { name = "qute"; version = "0.1.0"; };
      license = "GPL-3.0-only AND MIT AND BSD-3-Clause";
      copyright = "";
      maintainer = "soeren+hackage@soeren-tempel.net";
      author = "Sören Tempel";
      homepage = "https://git.8pit.net/qute";
      url = "";
      synopsis = "A software analysis framework built around the QBE intermediate language.";
      description = "This library provides formal semantics for the [QBE intermediate language](https://c9x.me/compile/)\nby providing [modular monadic semantics](https://doi.org/10.1007/3-540-61055-3_39) implemented using\nan [abstract monad](https://doi.org/10.1145/3607833). The package refers to this abstract monad as\nthe 'Language.QBE.Simulator.State.Simulator' monad. It provides several primitives that are used by\nthe \"Language.QBE.Simulator\" to /abstractly/ describe the semantics of QBE instructions. The\n'Language.QBE.Simulator.State.Simulator' can then be instantiated with /concrete/ semantics. For\nexample, the \"Language.QBE.Simulator.Default.State\" module provides an instantiation using a\n'Control.Monad.State' monad. This instantiation, and the 'Language.QBE.Simulator.State.Simulator'\nitself, are parameterized over the representation of QBE instruction operand values.\n\nTo abstractly describe operations on values passed to QBE instructions, this library additionally\nprovides an expression language abstraction in the \"Language.QBE.Simulator.Expression\" module.\nFurther, an implementation of this expression language based on fixed-width integer values is\navailable in the \"Language.QBE.Simulator.Default.Expression\" module.\n\nA separate [qute-symex](https://hackage.haskell.org/package/qute-symex) package provides an\nimplementation of the expression abstraction and the 'Language.QBE.Simulator.State.Simulator'\nmonad for formal reasoning about a software under test using\n[symbolic execution](https://en.wikipedia.org/wiki/Symbolic_execution).\nSimilar dynamic software testing techniques can be implemented using this library. Additionally,\nthere is some preliminary support for static analysis as well through the\n\"Language.QBE.Analysis.CFG\" module.\n\nMore information on the underlying idea and vision behind Qute is available in a\n[separate paper](https://www.ibr.cs.tu-bs.de/vss/Publications/2026/tempel_26_qute.pdf).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."qute-syntax" or (errorHandler.buildDepError "qute-syntax"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "qute-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."qute" or (errorHandler.buildDepError "qute"))
            (hsPkgs."qute-syntax" or (errorHandler.buildDepError "qute-syntax"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "qute" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."qute" or (errorHandler.buildDepError "qute"))
            (hsPkgs."qute-syntax" or (errorHandler.buildDepError "qute-syntax"))
          ];
          buildable = true;
        };
      };
    };
  }