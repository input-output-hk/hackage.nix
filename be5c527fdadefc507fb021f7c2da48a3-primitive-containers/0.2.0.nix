{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.0";
        identifier = {
          name = "primitive-containers";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/primitive-containers";
        url = "";
        synopsis = "";
        description = "Please see the README on Github at <https://github.com/andrewthad/primitive-containers>";
        buildType = "Simple";
      };
      components = {
        primitive-containers = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.primitive-sort
            hsPkgs.contiguous
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.primitive
              hsPkgs.primitive-containers
              hsPkgs.quickcheck-classes
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          gauge = {
            depends  = [
              hsPkgs.base
              hsPkgs.primitive
              hsPkgs.primitive-containers
              hsPkgs.ghc-prim
              hsPkgs.gauge
              hsPkgs.random
              hsPkgs.containers
            ];
          };
        };
      };
    }