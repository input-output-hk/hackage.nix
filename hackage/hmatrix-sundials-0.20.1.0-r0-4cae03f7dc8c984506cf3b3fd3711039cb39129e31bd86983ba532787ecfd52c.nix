{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "hmatrix-sundials"; version = "0.20.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz 2018, Novadiscovery 2018";
      maintainer = "dominic@steinitz.org";
      author = "Dominic Steinitz";
      homepage = "https://github.com/haskell-numerics/hmatrix-sundials";
      url = "";
      synopsis = "hmatrix interface to sundials";
      description = "An interface to the solving suite SUNDIALS. Currently, it\nmimics the solving interface in hmstrix-gsl but\nprovides more diagnostic information and the\nButcher Tableaux (for Runge-Kutta methods).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        libs = [
          (pkgs."sundials_arkode" or ((hsPkgs.pkgs-errors).sysDepError "sundials_arkode"))
          (pkgs."sundials_cvode" or ((hsPkgs.pkgs-errors).sysDepError "sundials_cvode"))
          ];
        buildable = true;
        };
      tests = {
        "hmatrix-sundials-testsuite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."inline-c" or ((hsPkgs.pkgs-errors).buildDepError "inline-c"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."hmatrix-sundials" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-sundials"))
            (hsPkgs."plots" or ((hsPkgs.pkgs-errors).buildDepError "plots"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-rasterific" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-rasterific"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hmatrix-sundials" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-sundials"))
            ];
          libs = [
            (pkgs."sundials_arkode" or ((hsPkgs.pkgs-errors).sysDepError "sundials_arkode"))
            (pkgs."sundials_cvode" or ((hsPkgs.pkgs-errors).sysDepError "sundials_cvode"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."hmatrix-sundials" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix-sundials"))
            (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }