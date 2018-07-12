{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildanatool = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "concraft";
          version = "0.9.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Jakub Waszczuk, 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "http://zil.ipipan.waw.pl/Concraft";
        url = "";
        synopsis = "Morphological disambiguation based on constrained CRFs";
        description = "A morphological disambiguation library based on\nconstrained conditional random fields.";
        buildType = "Simple";
      };
      components = {
        "concraft" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.text-binary
            hsPkgs.vector
            hsPkgs.vector-binary
            hsPkgs.monad-ox
            hsPkgs.sgd
            hsPkgs.tagset-positional
            hsPkgs.crf-chain1-constrained
            hsPkgs.crf-chain2-tiers
            hsPkgs.monad-codec
            hsPkgs.data-lens
            hsPkgs.transformers
            hsPkgs.comonad
            hsPkgs.temporary
            hsPkgs.aeson
            hsPkgs.zlib
            hsPkgs.lazy-io
            hsPkgs.cmdargs
          ];
        };
        exes = {
          "concraft-analyse-model" = {
            depends  = pkgs.lib.optionals _flags.buildanatool [
              hsPkgs.cmdargs
              hsPkgs.logfloat
            ];
          };
        };
      };
    }