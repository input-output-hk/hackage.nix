{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-interval";
          version = "1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "masahiro.sakai@gmail.com";
        author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Interval arithmetic for both open and closed intervals";
        description = "Interval datatype and interval arithmetic for Haskell.\nUnlike the intervals package (<http://hackage.haskell.org/package/intervals>),\nthis package provides both open and closed intervals and is intended to be used\nwith exact number types such as Rational and Integer.";
        buildType = "Simple";
      };
      components = {
        data-interval = {
          depends  = [
            hsPkgs.base
            hsPkgs.lattices
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.extended-reals
          ];
        };
        tests = {
          TestInterval = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-interval
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
          TestIntegerInterval = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.data-interval
              hsPkgs.test-framework
              hsPkgs.test-framework-th
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }