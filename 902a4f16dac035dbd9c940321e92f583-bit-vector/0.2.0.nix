{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bit-vector";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "acfoltzer@gmail.com";
        author = "Adam C. Foltzer";
        homepage = "https://github.com/acfoltzer/bit-vector";
        url = "";
        synopsis = "Simple bit vectors for Haskell";
        description = "Operations for using a vector of Booleans as a bit vector. Intended more for pedagogical purposes than for serious applications";
        buildType = "Simple";
      };
      components = {
        "bit-vector" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
        tests = {
          "Tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-quickcheck
              hsPkgs.bit-vector
            ];
          };
        };
      };
    }