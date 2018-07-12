{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      gsl = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmatrix-tests";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alberto Ruiz <aruiz@um.es>";
        author = "Alberto Ruiz";
        homepage = "https://github.com/albertoruiz/hmatrix";
        url = "";
        synopsis = "Tests for hmatrix";
        description = "Tests for hmatrix";
        buildType = "Simple";
      };
      components = {
        "hmatrix-tests" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.QuickCheck
            hsPkgs.HUnit
            hsPkgs.random
            hsPkgs.hmatrix
          ] ++ pkgs.lib.optional _flags.gsl hsPkgs.hmatrix-gsl;
        };
        tests = {
          "hmatrix-base-testsuite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hmatrix-tests
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.random
            ];
          };
          "hmatrix-gsl-testsuite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hmatrix-tests
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.random
            ];
          };
        };
        benchmarks = {
          "hmatrix-base-benchmark" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hmatrix-tests
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.random
            ];
          };
        };
      };
    }