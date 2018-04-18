{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "crf-chain2-tiers";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/crf-chain2-tiers";
        url = "";
        synopsis = "Second-order, tiered, constrained, linear conditional random fields";
        description = "The library provides implementation of the second-order, linear\nconditional random fields (CRFs) with position-wise constraints\nimposed over label values.  Each label consists of a vector of\nsmaller, atomic labels, and over each tier (layer) a separate\nset of model features is defined.";
        buildType = "Simple";
      };
      components = {
        crf-chain2-tiers = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.vector
            hsPkgs.binary
            hsPkgs.vector-binary
            hsPkgs.monad-codec
            hsPkgs.data-lens
            hsPkgs.comonad-transformers
            hsPkgs.logfloat
            hsPkgs.parallel
            hsPkgs.sgd
          ];
        };
      };
    }