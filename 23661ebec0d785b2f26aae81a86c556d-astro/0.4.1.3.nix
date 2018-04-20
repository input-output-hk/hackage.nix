{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "astro";
          version = "0.4.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "2016-2017 Alexander Ignatyev";
        maintainer = "Alexander Ignatyev";
        author = "Alexander Ignatyev";
        homepage = "https://github.com/alexander-ignatyev/astro";
        url = "";
        synopsis = "Amateur astronomical computations";
        description = "Amateur astronomical computations: rise and set times and azimuths,\ncoordinates, distances, angular sizes and other parameters\nof the Sun, the Moon, planets and stars.";
        buildType = "Simple";
      };
      components = {
        astro = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.matrix
          ];
        };
        tests = {
          astro-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.astro
              hsPkgs.time
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }