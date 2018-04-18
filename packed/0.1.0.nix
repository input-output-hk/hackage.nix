{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "packed";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/bytearray#readme";
        url = "";
        synopsis = "";
        description = "Please see the README on Github at <https://github.com/andrewthad/bytearray#readme>";
        buildType = "Simple";
      };
      components = {
        packed = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.primitive
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.packed
              hsPkgs.hedgehog
              hsPkgs.tasty-hedgehog
              hsPkgs.tasty-hunit
              hsPkgs.tasty
              hsPkgs.containers
              hsPkgs.ghc-prim
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.packed
              hsPkgs.gauge
            ];
          };
        };
      };
    }