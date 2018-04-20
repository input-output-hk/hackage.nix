{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "algebra";
          version = "0.8.0";
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
            hsPkgs.array
            hsPkgs.base
            hsPkgs.distributive
            hsPkgs.transformers
            hsPkgs.tagged
            hsPkgs.categories
            hsPkgs.containers
            hsPkgs.keys
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.representable-functors
            hsPkgs.representable-tries
            hsPkgs.void
          ];
        };
      };
    }