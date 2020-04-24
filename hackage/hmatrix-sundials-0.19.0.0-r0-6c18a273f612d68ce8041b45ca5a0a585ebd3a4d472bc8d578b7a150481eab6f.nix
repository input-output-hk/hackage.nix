{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "hmatrix-sundials"; version = "0.19.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz 2018, Novadiscovery 2018";
      maintainer = "dominic@steinitz.org";
      author = "Dominic Steinitz";
      homepage = "https://github.com/idontgetoutmuch/hmatrix/tree/sundials";
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
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          ];
        libs = [
          (pkgs."sundials_arkode" or ((hsPkgs.pkgs-errors).sysDepError "sundials_arkode"))
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
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."plots" or ((hsPkgs.pkgs-errors).buildDepError "plots"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-rasterific" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-rasterific"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          libs = [
            (pkgs."sundials_arkode" or ((hsPkgs.pkgs-errors).sysDepError "sundials_arkode"))
            ];
          buildable = true;
          };
        };
      };
    }