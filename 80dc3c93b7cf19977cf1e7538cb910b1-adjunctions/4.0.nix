{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "adjunctions";
          version = "4.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2014 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/adjunctions/";
        url = "";
        synopsis = "Adjunctions and representable functors";
        description = "Adjunctions and representable functors";
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
            hsPkgs.free
            hsPkgs.mtl
            hsPkgs.tagged
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.void
          ];
        };
      };
    }