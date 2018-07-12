{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "monoids";
          version = "0.1.21";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://comonad.com/reader";
        url = "";
        synopsis = "Monoids, specialized containers and a general map/reduce framework";
        description = "Monoids, specialized containers and a general map/reduce framework";
        buildType = "Simple";
      };
      components = {
        "monoids" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.fingertree
            hsPkgs.bytestring
            hsPkgs.category-extras
            hsPkgs.parallel
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.bitset
            hsPkgs.QuickCheck
            hsPkgs.array
            hsPkgs.reflection
          ];
        };
      };
    }