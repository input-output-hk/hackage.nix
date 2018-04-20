{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "range-space";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jwlato@gmail.com";
        author = "John Lato";
        homepage = "https://github.com/JohnLato/range-space";
        url = "";
        synopsis = "A Range type with vector-space instances";
        description = "Provides functions for converting between ranges and spans";
        buildType = "Simple";
      };
      components = {
        range-space = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.vector-space
            hsPkgs.vector-space-points
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.range-space
              hsPkgs.semigroups
              hsPkgs.vector-space
              hsPkgs.vector-space-points
              hsPkgs.time
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }