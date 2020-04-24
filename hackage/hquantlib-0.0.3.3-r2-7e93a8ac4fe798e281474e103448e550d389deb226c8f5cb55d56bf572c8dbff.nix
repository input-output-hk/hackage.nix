{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimize = true; };
    package = {
      specVersion = "1.18.0";
      identifier = { name = "hquantlib"; version = "0.0.3.3"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Pavel Ryzhov <pavel.ryzhov@gmail.com>";
      author = "Pavel Ryzhov";
      homepage = "http://github.com/paulrzcz/hquantlib.git";
      url = "";
      synopsis = "HQuantLib is a port of essencial parts of QuantLib to Haskell";
      description = "HQuantLib is intended to be a functional style port of QuantLib (http://quantlib.org)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-gsl"))
          (hsPkgs."hmatrix-special" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-special"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
          ];
        buildable = true;
        };
      exes = {
        "mctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hquantlib" or ((hsPkgs.pkgs-errors).buildDepError "hquantlib"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "main-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }