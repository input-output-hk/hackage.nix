{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { pl3 = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hirt";
        version = "0.0.1.0";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.text-format)
            (hsPkgs.csv)
            (hsPkgs.hmatrix)
            (hsPkgs.numeric-extras)
            (hsPkgs.cmdargs)
            (hsPkgs.random)
            (hsPkgs.statistics)
            (hsPkgs.mwc-random)
            (hsPkgs.vector-space)
            (hsPkgs.hlbfgsb)
          ];
        };
      };
    };
  }