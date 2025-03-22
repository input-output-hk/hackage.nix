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
    flags = { unsafe-operations = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "crucible"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Galois, Inc 2014-2022";
      maintainer = "rscott@galois.com, kquick@galois.com, langston@galois.com";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "Crucible is a library for language-agnostic symbolic simulation";
      description = "Crucible provides a program representation format based on single-static assignment\n(SSA) form control flow graphs, and a symbolic simulation engine for executing\nprograms expressed in this format.  It also provides support for communicating with\na variety of SAT and SMT solvers, including Z3, CVC4, Yices, STP, and dReal.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."bv-sized" or (errorHandler.buildDepError "bv-sized"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."panic" or (errorHandler.buildDepError "panic"))
          (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
        ];
        buildable = true;
      };
      tests = {
        "absint-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."crucible" or (errorHandler.buildDepError "crucible"))
            (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
            (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "helper-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."crucible" or (errorHandler.buildDepError "crucible"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."panic" or (errorHandler.buildDepError "panic"))
            (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
          ];
          buildable = true;
        };
      };
    };
  }