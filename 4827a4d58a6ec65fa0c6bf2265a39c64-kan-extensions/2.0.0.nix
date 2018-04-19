{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "kan-extensions";
          version = "2.0.0";
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
            hsPkgs.array
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.distributive
            hsPkgs.mtl
            hsPkgs.comonad-transformers
            hsPkgs.comonads-fd
            hsPkgs.keys
            hsPkgs.free
            hsPkgs.adjunctions
            hsPkgs.representable-functors
          ];
        };
      };
    }