{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bit-vector";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "acfoltzer@gmail.com";
        author = "Adam C. Foltzer";
        homepage = "https://github.com/acfoltzer/bit-vector";
        url = "";
        synopsis = "Simple bit vectors for Haskell";
        description = "";
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
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.bit-vector
            ];
          };
        };
      };
    }