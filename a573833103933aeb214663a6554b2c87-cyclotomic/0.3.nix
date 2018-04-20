{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cyclotomic";
          version = "0.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
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
      };
    }