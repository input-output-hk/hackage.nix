{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "representable-tries";
          version = "2.0.0.2";
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
        representable-tries = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.comonad
            hsPkgs.containers
            hsPkgs.distributive
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.transformers
            hsPkgs.keys
            hsPkgs.comonad-transformers
            hsPkgs.adjunctions
            hsPkgs.representable-functors
          ];
        };
      };
    }