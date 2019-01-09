{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HarmTrace"; version = "2.2.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2010--2013 Universiteit Utrecht,\n2012--2013 University of Oxford,\n2017 Chordify BV";
      maintainer = "haskelldevelopers@chordify.net";
      author = "W. Bas de Haas and Jose Pedro Magalhaes";
      homepage = "https://github.com/haas/harmtrace";
      url = "";
      synopsis = "Harmony Analysis and Retrieval of Music";
      description = "HarmTrace: Harmony Analysis and Retrieval of Music\nwith Type-level Representations of Abstract\nChords Entities\n\nWe present HarmTrace, a system\nfor automatically analysing the harmony of music\nsequences. HarmTrace is described in the paper:\n\n* Jose Pedro Magalhaes and W. Bas de Haas.\n/Experience Report: Functional Modelling of Musical Harmony./\nInternational Conference on Functional Programming,\n2011.\n<http://dreixel.net/research/pdf/fmmh.pdf>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "harmtrace" = {
          depends = [
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
            (hsPkgs.matrix)
            (hsPkgs.sox)
            (hsPkgs.instant-generics)
            (hsPkgs.binary)
            (hsPkgs.HarmTrace-Base)
            (hsPkgs.ghc-prim)
            ];
          };
        };
      };
    }