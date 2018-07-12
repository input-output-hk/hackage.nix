{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hmm";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "max.rabkin@gmail.com";
        author = "Max Rabkin";
        homepage = "";
        url = "";
        synopsis = "Hidden Markov Model algorithms";
        description = "A simple library for working with Hidden Markov Models.\nShould be usable even by people who are not familiar with\nHMMs. Includes implementations of Viterbi's algorithm and\nthe forward algorithm.";
        buildType = "Simple";
      };
      components = {
        "hmm" = {
          depends  = if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.containers
            ]
            else [ hsPkgs.base ];
        };
      };
    }