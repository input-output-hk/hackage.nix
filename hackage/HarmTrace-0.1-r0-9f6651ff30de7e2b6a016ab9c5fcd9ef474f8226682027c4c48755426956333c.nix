{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HarmTrace"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2010--2011 Universiteit Utrecht";
      maintainer = "bash@cs.uu.nl, jpm@cs.uu.nl";
      author = "W. Bas de Haas and José Pedro Magalhães";
      homepage = "";
      url = "";
      synopsis = "HarmTrace: Harmony Analysis and Retrieval of Music\nwith Type-level Representations of Abstract\nChords Entities";
      description = "This is the first public release of HarmTrace, a system\nfor automatically analysing the harmony of music\nsequences. HarmTrace is described in the paper:\n\n* José Pedro Magalhães and W. Bas de Haas.\n/Experience Report: Functional Modelling of Musical Harmony./\nInternational Conference on Functional Programming,\n2011.\n<http://dreixel.net/research/pdf/fmmh.pdf>";
      buildType = "Custom";
      };
    components = {
      exes = {
        "mir" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.array)
            (hsPkgs.parallel)
            (hsPkgs.Diff)
            (hsPkgs.parseargs)
            (hsPkgs.regex-tdfa)
            (hsPkgs.process)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.ListLike)
            (hsPkgs.vector)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.syb)
            (hsPkgs.ghc-prim)
            ];
          };
        };
      };
    }