{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "accelerate-typelits";
          version = "0.1.0.0";
        };
        license = "ISC";
        copyright = "(c) 2016 Martin Heuschober";
        maintainer = "Martin Heuschober <epsilonhalbe [at] gmail [dot] com>";
        author = "Martin Heuschober";
        homepage = "";
        url = "";
        synopsis = "a typesafe way encode accelerate matrices and vectors";
        description = "a small wrapper plus convenience functions on top of\naccelerate to represent matrices with their dimensions";
        buildType = "Simple";
      };
      components = {
        accelerate-typelits = {
          depends  = [
            hsPkgs.base
            hsPkgs.accelerate
            hsPkgs.accelerate-random
            hsPkgs.mwc-random
            hsPkgs.smallcheck
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.accelerate
              hsPkgs.accelerate-random
              hsPkgs.accelerate-typelits
              hsPkgs.HUnit-Plus
              hsPkgs.mwc-random
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
            ];
          };
        };
      };
    }