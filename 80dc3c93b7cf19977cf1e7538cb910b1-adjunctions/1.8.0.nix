{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "adjunctions";
          version = "1.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/adjunctions/";
        url = "";
        synopsis = "Adjunctions";
        description = "Adjunctions";
        buildType = "Simple";
      };
      components = {
        adjunctions = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.distributive
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.transformers
            hsPkgs.void
            hsPkgs.keys
            hsPkgs.comonad-transformers
            hsPkgs.representable-functors
          ];
        };
      };
    }