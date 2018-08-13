{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "NestedSampling";
        version = "0.1.4";
      };
      license = "GPL-2.0-only";
      copyright = "(C) Sivia, Skilling 2006, Trotts 2011";
      maintainer = "issac.trotts@gmail.com";
      author = "Issac Trotts";
      homepage = "https://github.com/ijt/haskell_nested_sampling";
      url = "";
      synopsis = "A port of John Skilling's nested sampling C code to Haskell.";
      description = "Nested Sampling is a numerical algorithm for approximate Bayesian\ninference. It generates samples from the posterior\ndistribution but its main purpose is to estimate the\nevidence P(M|D) of the model conditioned on the observed\ndata. More information on Nested Sampling is available\nat <http://en.wikipedia.org/wiki/Nested_sampling_algorithm>.\n\nThe original code can be found at\n<http://www.inference.phy.cam.ac.uk/bayesys/sivia/>\nalong with documentation at\n<http://www.inference.phy.cam.ac.uk/bayesys/>.\nAn example program called lighthouse.hs is included.\n\nSo far, only the simple demonstration file called mininest.c\nhas been ported. There is a more sophisticated C library\navailable at\n<http://www.inference.phy.cam.ac.uk/bayesys/nest/nest.tar.gz>\nbut it has not been ported to Haskell yet.";
      buildType = "Simple";
    };
    components = {
      "NestedSampling" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.vector)
        ];
      };
    };
  }