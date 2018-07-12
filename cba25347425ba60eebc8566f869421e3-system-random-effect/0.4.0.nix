{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "system-random-effect";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cgaebel@uwaterloo.ca";
        author = "Clark Gaebel";
        homepage = "https://github.com/wowus/system-random-effect";
        url = "";
        synopsis = "Random number generation for extensible effects.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "system-random-effect" = {
          depends  = [
            hsPkgs.base
            hsPkgs.extensible-effects
            hsPkgs.mersenne-random-pure64
            hsPkgs.statistics
            hsPkgs.vector
            hsPkgs.vector-algorithms
            hsPkgs.primitive
            hsPkgs.crypto-api
            hsPkgs.bytestring
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.extensible-effects
              hsPkgs.system-random-effect
            ];
          };
        };
        benchmarks = {
          "benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.extensible-effects
              hsPkgs.vector
              hsPkgs.system-random-effect
            ];
          };
        };
      };
    }