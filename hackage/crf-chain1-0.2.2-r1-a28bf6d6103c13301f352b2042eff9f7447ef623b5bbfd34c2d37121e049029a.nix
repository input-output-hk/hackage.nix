{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "crf-chain1";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/crf-chain1";
      url = "";
      synopsis = "First-order, linear-chain conditional random fields";
      description = "The library provides efficient implementation of the first-order,\nlinear-chain conditional random fields (CRFs).\n\nImportant feature of the implemented flavour of CRFs is that transition\nfeatures which are not included in the CRF model are considered to have\nprobability of 0.\nIt is particularly useful when the training material determines the set\nof possible label transitions (e.g. when using the IOB encoding method).\nFurthermore, this design decision makes the implementation much faster\nfor sparse datasets.";
      buildType = "Simple";
    };
    components = {
      "crf-chain1" = {
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
          (hsPkgs.vector-th-unbox)
        ];
      };
    };
  }