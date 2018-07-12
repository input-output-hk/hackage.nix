{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "matrix-as-xyz";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Jun Narumi";
        maintainer = "narumij@gmail.com";
        author = "Jun Narumi";
        homepage = "https://github.com/narumij/matrix-as-xyz#readme";
        url = "";
        synopsis = "Read and Display representation of matrix like \"x,y,z\"";
        description = "Please see the README on GitHub at <https://github.com/narumij/matrix-as-xyz#readme>";
        buildType = "Simple";
      };
      components = {
        "matrix-as-xyz" = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.hspec
            hsPkgs.matrix
            hsPkgs.parsec
          ];
        };
        tests = {
          "matrix-as-xyz-doctest" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.hspec
              hsPkgs.matrix
              hsPkgs.matrix-as-xyz
              hsPkgs.parsec
            ];
          };
          "matrix-as-xyz-test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.matrix
              hsPkgs.matrix-as-xyz
              hsPkgs.parsec
            ];
          };
        };
      };
    }