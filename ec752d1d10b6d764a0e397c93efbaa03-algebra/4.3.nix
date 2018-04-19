{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "algebra";
          version = "4.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/algebra/";
        url = "";
        synopsis = "Constructive abstract algebra";
        description = "Constructive abstract algebra";
        buildType = "Simple";
      };
      components = {
        algebra = {
          depends  = [
            hsPkgs.adjunctions
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.distributive
            hsPkgs.mtl
            hsPkgs.nats
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.transformers
            hsPkgs.tagged
            hsPkgs.void
          ];
        };
      };
    }