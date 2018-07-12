{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "representable-tries";
          version = "0.3.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/representable-tries/";
        url = "";
        synopsis = "Tries from representations of polynomial functors";
        description = "Tries from representations of polynomial functors";
        buildType = "Simple";
      };
      components = {
        "representable-tries" = {
          depends  = [
            hsPkgs.adjunctions
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.comonad
            hsPkgs.comonad-transformers
            hsPkgs.containers
            hsPkgs.distributive
            hsPkgs.keys
            hsPkgs.mtl
            hsPkgs.representable-functors
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.streams
            hsPkgs.transformers
          ];
        };
      };
    }