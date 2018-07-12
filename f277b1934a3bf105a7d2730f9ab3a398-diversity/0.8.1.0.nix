{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "diversity";
          version = "0.8.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "gsch@mail.med.upenn.edu";
        author = "Gregory W. Schwartz";
        homepage = "https://github.com/GregorySchwartz/diversity";
        url = "";
        synopsis = "Quantify the diversity of a population";
        description = "Find the diversity of a collection of entities, mainly for use with fasta sequences.";
        buildType = "Simple";
      };
      components = {
        "diversity" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.split
            hsPkgs.parsec
            hsPkgs.fasta
            hsPkgs.math-functions
            hsPkgs.scientific
            hsPkgs.random-shuffle
            hsPkgs.MonadRandom
            hsPkgs.data-ordlist
          ];
        };
        exes = {
          "diversity" = {
            depends  = [
              hsPkgs.diversity
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.fasta
              hsPkgs.pipes
              hsPkgs.containers
              hsPkgs.semigroups
            ];
          };
        };
      };
    }