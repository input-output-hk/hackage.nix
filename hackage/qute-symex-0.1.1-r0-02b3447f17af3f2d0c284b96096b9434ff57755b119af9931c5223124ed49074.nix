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
      identifier = { name = "qute-symex"; version = "0.1.1"; };
      license = "GPL-3.0-only AND MIT";
      copyright = "";
      maintainer = "soeren+hackage@soeren-tempel.net";
      author = "Sören Tempel";
      homepage = "https://git.8pit.net/qute";
      url = "";
      synopsis = "A symbolic execution engine for the QBE intermediate language.";
      description = "Based on the formal semantics of the [Qute](https://hackage.haskell.org/package/qute) package,\nthis library provides a [symbolic execution](https://en.wikipedia.org/wiki/Symbolic_execution)\nengine for the QBE intermediate language. Thereby, it enables formal reasoning about a software\nunder test using [SMT solvers](https://en.wikipedia.org/wiki/Satisfiability_modulo_theories).\n\nThe underlying vision behind Qute's symbolic execution engine is further described in a\n[separate paper](https://www.ibr.cs.tu-bs.de/vss/Publications/2026/tempel_26_qute.pdf).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."qute" or (errorHandler.buildDepError "qute"))
          (hsPkgs."qute-syntax" or (errorHandler.buildDepError "qute-syntax"))
          (hsPkgs."simple-smt" or (errorHandler.buildDepError "simple-smt"))
        ];
        buildable = true;
      };
      tests = {
        "qute-symex-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."qute" or (errorHandler.buildDepError "qute"))
            (hsPkgs."qute-syntax" or (errorHandler.buildDepError "qute-syntax"))
            (hsPkgs."qute-symex" or (errorHandler.buildDepError "qute-symex"))
            (hsPkgs."simple-smt" or (errorHandler.buildDepError "simple-smt"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "qute-symex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."simple-smt" or (errorHandler.buildDepError "simple-smt"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."qute" or (errorHandler.buildDepError "qute"))
            (hsPkgs."qute-syntax" or (errorHandler.buildDepError "qute-syntax"))
            (hsPkgs."qute-symex" or (errorHandler.buildDepError "qute-symex"))
          ];
          buildable = true;
        };
      };
    };
  }