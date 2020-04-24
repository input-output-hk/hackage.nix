{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { openblas = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hblas"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carter at wellposed dot com";
      author = "Carter Tazio Schonwald";
      homepage = "";
      url = "";
      synopsis = "Human friendly BLAS and Lapack bindings for Haskell.";
      description = "User friendly, simple bindings to BLAS and Lapack. Easy to extend and use.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        libs = ((pkgs.lib).optionals (flags.openblas) [
          (pkgs."openblas" or ((hsPkgs.pkgs-errors).sysDepError "openblas"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ] ++ (pkgs.lib).optionals (system.isWindows && !flags.openblas) [
          (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
          (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
          ]) ++ (pkgs.lib).optionals (!system.isWindows && !system.isOsx && !flags.openblas) [
          (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas"))
          (pkgs."lapack" or ((hsPkgs.pkgs-errors).sysDepError "lapack"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx && !flags.openblas) (pkgs."Accelerate" or ((hsPkgs.pkgs-errors).sysDepError "Accelerate"));
        buildable = true;
        };
      tests = {
        "unit-testsuite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hblas" or ((hsPkgs.pkgs-errors).buildDepError "hblas"))
            ];
          buildable = true;
          };
        };
      };
    }