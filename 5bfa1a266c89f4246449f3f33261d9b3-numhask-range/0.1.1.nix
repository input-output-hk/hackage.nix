{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "numhask-range";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/numhask-range";
        url = "";
        synopsis = "Numbers that are range representations";
        description = "Numbers that represent ranges of all sorts.";
        buildType = "Simple";
      };
      components = {
        numhask-range = {
          depends  = [
            hsPkgs.base
            hsPkgs.numhask
            hsPkgs.protolude
            hsPkgs.QuickCheck
            hsPkgs.adjunctions
            hsPkgs.distributive
            hsPkgs.semigroupoids
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.numhask
              hsPkgs.numhask-range
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }