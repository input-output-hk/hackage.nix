{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "crf-chain2-generic";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Jakub Waszczuk, 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/crf-chain2-generic";
        url = "";
        synopsis = "Second-order, generic, constrained, linear conditional random fields";
        description = "The library provides implementation of the second-order, linear\nconditional random fields (CRFs) with position-wise constraints\nimposed over label values.  It provides a generic framework for\ndefining custom feature data types and feature generation\nfunctions.";
        buildType = "Simple";
      };
      components = {
        crf-chain2-generic = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.vector
            hsPkgs.binary
            hsPkgs.vector-binary
            hsPkgs.logfloat
            hsPkgs.parallel
            hsPkgs.monad-codec
            hsPkgs.data-lens
            hsPkgs.comonad-transformers
            hsPkgs.sgd
          ];
        };
      };
    }