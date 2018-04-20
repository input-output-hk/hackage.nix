{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "numhask-range";
          version = "0.0.4";
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
            hsPkgs.lens
            hsPkgs.foldl
            hsPkgs.containers
            hsPkgs.QuickCheck
            hsPkgs.linear
            hsPkgs.formatting
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.numhask-range
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.numhask
            ];
          };
        };
      };
    }