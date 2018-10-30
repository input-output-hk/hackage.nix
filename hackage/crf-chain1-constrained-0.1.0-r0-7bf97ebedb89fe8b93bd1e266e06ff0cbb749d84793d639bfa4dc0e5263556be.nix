{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "crf-chain1-constrained";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/crf-chain1-constrained";
      url = "";
      synopsis = "First-order, constrained, linear-chain conditional random fields";
      description = "The library provides efficient implementation of the first-order,\nlinear-chain conditional random fields (CRFs) with position-wise\nconstraints imposed over label values.\n\nIt is strongly related to the simpler\n<http://hackage.haskell.org/package/crf-chain1>\nlibrary where constraints are not taken into account and all\nfeatures which are not included in the CRF model are considered to have\nprobability of 0.  Here, on the other hand, such features do not influence\nthe overall probability of the (sentence, labels) pair - they are\nassigned the default potential of 0.\n\nEfficient algorithm for determining marginal probabilities of individual\nlabels is provided.\nThe tagging is performed with respect to marginal probabilities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.parallel)
          (hsPkgs.logfloat)
          (hsPkgs.monad-codec)
          (hsPkgs.binary)
          (hsPkgs.vector-binary)
          (hsPkgs.data-lens)
          (hsPkgs.sgd)
        ];
      };
    };
  }