{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ms";
          version = "0.1";
        };
        license = "BSD-2-Clause";
        copyright = "(C) 2015 Ricky Elrod, Tony Morris";
        maintainer = "ricky@elrod.me";
        author = "Ricky Elrod, Tony Morris";
        homepage = "https://github.com/relrod/ms";
        url = "";
        synopsis = "metric spaces";
        description = "A 'MetricSpace' is a set together with a notion of distance between\nelements. Distance is computed by a function 'dist' which has the following\nfour laws:\n\n(1) __non-negative__: @forall x y. 'dist' x y >= 0@\n\n(2) __identity of indiscernibles__: @forall x y. 'dist' x y == 0 \\<=\\> x == y@\n\n(3) __symmetry__: @forall x y. dist x y == 'dist' y x@\n\n(4) __triangle inequality__: @forall x y z. 'dist' x z <= 'dist' x y + 'dist' y z@\n\nSee the Wikipedia <https://en.wikipedia.org/wiki/Metric_space article on metric spaces>\nfor more details.";
        buildType = "Simple";
      };
      components = {
        "ms" = {
          depends  = [
            hsPkgs.base
            hsPkgs.contravariant
            hsPkgs.edit-distance
            hsPkgs.lens
            hsPkgs.profunctors
            hsPkgs.semigroups
            hsPkgs.vector
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.ms
              hsPkgs.profunctors
              hsPkgs.vector
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }