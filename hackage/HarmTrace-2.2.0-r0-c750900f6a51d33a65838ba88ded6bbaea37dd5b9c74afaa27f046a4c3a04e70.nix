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
        name = "HarmTrace";
        version = "2.2.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2010--2013 Universiteit Utrecht,\n2012--2013 University of Oxford";
      maintainer = "bash@cs.uu.nl, jpm@cs.ox.ac.uk";
      author = "W. Bas de Haas and Jose Pedro Magalhaes";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/HarmTrace";
      url = "";
      synopsis = "Harmony Analysis and Retrieval of Music";
      description = "HarmTrace: Harmony Analysis and Retrieval of Music\nwith Type-level Representations of Abstract\nChords Entities\n\nWe present HarmTrace, a system\nfor automatically analysing the harmony of music\nsequences. HarmTrace is described in the paper:\n\n* Jose Pedro Magalhaes and W. Bas de Haas.\n/Experience Report: Functional Modelling of Musical Harmony./\nInternational Conference on Functional Programming,\n2011.\n<http://dreixel.net/research/pdf/fmmh.pdf>";
      buildType = "Custom";
    };
    components = {
      "HarmTrace" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.array)
          (hsPkgs.parallel)
          (hsPkgs.Diff)
          (hsPkgs.parseargs)
          (hsPkgs.process)
          (hsPkgs.uu-parsinglib)
          (hsPkgs.ListLike)
          (hsPkgs.vector)
          (hsPkgs.deepseq)
          (hsPkgs.HCodecs)
          (hsPkgs.instant-generics)
          (hsPkgs.binary)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl-stats)
          (hsPkgs.HarmTrace-Base)
          (hsPkgs.ghc-prim)
        ];
      };
      exes = {
        "harmtrace" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.array)
            (hsPkgs.parallel)
            (hsPkgs.Diff)
            (hsPkgs.cmdargs)
            (hsPkgs.process)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.ListLike)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            (hsPkgs.sox)
            (hsPkgs.instant-generics)
            (hsPkgs.binary)
            (hsPkgs.hmatrix)
            (hsPkgs.hmatrix-gsl-stats)
            (hsPkgs.HarmTrace-Base)
            (hsPkgs.ghc-prim)
          ];
        };
      };
    };
  }