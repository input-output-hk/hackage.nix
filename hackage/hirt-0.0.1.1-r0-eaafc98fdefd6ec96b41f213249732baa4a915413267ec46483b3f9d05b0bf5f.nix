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
    flags = { pl3 = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hirt"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan@hirt.ksp.sk";
      author = "Ivan Labáth";
      homepage = "https://people.ksp.sk/~ivan/hirt";
      url = "";
      synopsis = "Calculates IRT 2PL and 3PL models";
      description = "Program for fitting Item Response Theory (IRT) two (2PL) and\nthree (3PL) parameter logistic models.\n\nImplements Joint Maximum Likelihood (JML) algorithm\n(currently only supported in 2PL model) and via\ngeneric function optimization using L-BFGS-B (both 2PL and 3PL).\n\nCalculates item parameter and subject ability estimates and\nlog likelihood statistics. For contestant abilities supports\nerror estimates via Fisher information, and via two algorithms\nof the author, namely bootstrap and Bayes a posteriori probability.\n\nSupports outputting coordinate list for a plot of Bayes\na posteriori probability of individual subject abilities.\n\nPart of a masters thesis of the author \"http://people.ksp.sk/~ivan/irt/ebook.pdf\" .\n\nAs a side note, it is currently a lacking proper documentation and user friendliness.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hirt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."numeric-extras" or (errorHandler.buildDepError "numeric-extras"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            (hsPkgs."hlbfgsb" or (errorHandler.buildDepError "hlbfgsb"))
          ];
          buildable = true;
        };
      };
    };
  }