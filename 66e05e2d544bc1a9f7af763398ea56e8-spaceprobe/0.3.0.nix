{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "spaceprobe";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sean Burton <burton.seanr@gmail.com>";
        author = "Sean Burton <burton.seanr@gmail.com>";
        homepage = "https://github.com/SeanRBurton/spaceprobe";
        url = "";
        synopsis = "Optimization over arbitrary search spaces";
        description = "A parameter optimization library, designed for optimizing over\narbitrary search spaces. It is particularly well suited for discontinuous\nand/or high-dimensional search spaces.";
        buildType = "Simple";
      };
      components = {
        "spaceprobe" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.clock
            hsPkgs.erf
            hsPkgs.mtl
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.clock
              hsPkgs.erf
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
        };
        benchmarks = {
          "benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.spaceprobe
            ];
          };
        };
      };
    }