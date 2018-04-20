{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "kan-extensions";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/kan-extensions/";
        url = "";
        synopsis = "Kan extensions, the Yoneda lemma, and (co)density (co)monads";
        description = "Kan extensions, the Yoneda lemma, and (co)density (co)monads";
        buildType = "Simple";
      };
      components = {
        kan-extensions = {
          depends  = [
            hsPkgs.adjunctions
            hsPkgs.array
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.comonads-fd
            hsPkgs.comonad-transformers
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.distributive
            hsPkgs.keys
            hsPkgs.mtl
            hsPkgs.representable-functors
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.transformers
          ];
        };
      };
    }