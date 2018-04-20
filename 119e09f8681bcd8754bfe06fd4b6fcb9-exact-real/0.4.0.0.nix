{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exact-real";
          version = "0.4.0.0";
        };
        license = "MIT";
        copyright = "2015 Joe Hermaszewski";
        maintainer = "keep.it.real@monoid.al";
        author = "Joe Hermaszewski";
        homepage = "";
        url = "";
        synopsis = "Exact real arithmetic";
        description = "please see readme.md";
        buildType = "Simple";
      };
      components = {
        exact-real = {
          depends  = [
            hsPkgs.base
            hsPkgs.integer-gmp
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.groups
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.checkers
              hsPkgs.random
              hsPkgs.exact-real
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }