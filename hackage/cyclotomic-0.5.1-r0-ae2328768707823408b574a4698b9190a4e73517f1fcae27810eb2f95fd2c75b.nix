{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cyclotomic"; version = "0.5.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."arithmoi" or ((hsPkgs.pkgs-errors).buildDepError "arithmoi"))
          ];
        buildable = true;
        };
      tests = {
        "cyclotomic-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."cyclotomic" or ((hsPkgs.pkgs-errors).buildDepError "cyclotomic"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-smallcheck"))
            ];
          buildable = true;
          };
        };
      };
    }