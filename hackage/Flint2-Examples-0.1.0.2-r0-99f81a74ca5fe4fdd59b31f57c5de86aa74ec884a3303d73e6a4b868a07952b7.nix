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
      specVersion = "1.18";
      identifier = { name = "Flint2-Examples"; version = "0.1.0.2"; };
      license = "GPL-2.0-only";
      copyright = "2023 Hartmut Monien";
      maintainer = "hmonien@uni-bonn.de";
      author = "monien";
      homepage = "https://github.com/monien/Flint2-Examples#readme";
      url = "";
      synopsis = "Examples for the Flint2 library";
      description = "Examples for Flint2 Haskell bindings for the flint library for number theory.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bernoulli" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "binet" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "class_poly" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "complex_plot" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."gloss-juicy" or (errorHandler.buildDepError "gloss-juicy"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "crt" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "delta_qexp" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "dft" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "elementary" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "expression" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "factor_integer" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "fmpq_poly" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "fmpz_mod_poly" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "fmpz_mpoly_factor" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "fmpz_poly_factor_zassenhaus" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "fpwrap" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "fq_poly" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "function_benchmark" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "hilbert_matrix" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "hilbert_matrix_ca" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "integrals" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "keiper_li" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "l_central" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "l_values" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "logistic" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "machin" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "multi_crt" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "padic" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "partitions" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "pi_digits" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "poly_roots" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "primegen" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "qadic" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "radix" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "real_roots" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "stirling_matrix" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "swinnerton_dyer_poly" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "taylor_integrals" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
        "zeta_zeros" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
      };
      tests = {
        "Flint2-Examples-test" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."Flint2-Examples" or (errorHandler.buildDepError "Flint2-Examples"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
          ];
          buildable = true;
        };
      };
    };
  }