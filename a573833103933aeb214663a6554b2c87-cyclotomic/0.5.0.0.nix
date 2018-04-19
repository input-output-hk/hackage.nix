{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cyclotomic";
          version = "0.5.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) Scott N. Walck 2012-2017";
        maintainer = "Scott N. Walck <walck@lvc.edu>";
        author = "Scott N. Walck";
        homepage = "";
        url = "";
        synopsis = "A subfield of the complex numbers for exact calculation.";
        description = "The cyclotomic numbers are a subset of the\ncomplex numbers that are represented exactly, enabling exact\ncomputations and equality comparisons.  They\ncontain the Gaussian rationals (complex numbers\nof the form p + q i with p and q rational), as well\nas all complex roots of unity.  The\ncyclotomic numbers contain the square roots of\nall rational numbers.  They contain the sine and\ncosine of all rational multiples of pi.\nThe cyclotomic numbers form a field, being closed under\naddition, subtraction, mutiplication, and division.";
        buildType = "Simple";
      };
      components = {
        cyclotomic = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.arithmoi
          ];
        };
        tests = {
          cyclotomic-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.cyclotomic
              hsPkgs.test-framework
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-smallcheck
            ];
          };
        };
      };
    }