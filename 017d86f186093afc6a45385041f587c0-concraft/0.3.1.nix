{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "concraft";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Jakub Waszczuk, 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "http://zil.ipipan.waw.pl/Concraft";
        url = "";
        synopsis = "Morphosyntactic tagging tool based on constrained CRFs";
        description = "A morphosyntactic tagging tool based on constrained conditional\nrandom fields.";
        buildType = "Simple";
      };
      components = {
        concraft = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.text
            hsPkgs.text-binary
            hsPkgs.vector
            hsPkgs.vector-binary
            hsPkgs.crf-chain1-constrained
            hsPkgs.monad-ox
            hsPkgs.sgd
            hsPkgs.tagset-positional
            hsPkgs.crf-chain2-generic
            hsPkgs.monad-codec
            hsPkgs.data-lens
            hsPkgs.comonad-transformers
            hsPkgs.temporary
          ];
        };
        exes = {
          concraft = {
            depends  = [ hsPkgs.cmdargs ];
          };
        };
      };
    }