{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "casadi-bindings"; version = "1.8.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2013-2014 Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "low level bindings to CasADi";
      description = "See the readme on github for installation instructions. Version numbers correspond to the C++ library version numbers. This only works on Debian/Ubuntu at the moment (sorry).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          (pkgs."casadi_ipopt_interface" or ((hsPkgs.pkgs-errors).sysDepError "casadi_ipopt_interface"))
          (pkgs."casadi_ipopt" or ((hsPkgs.pkgs-errors).sysDepError "casadi_ipopt"))
          (pkgs."dl" or ((hsPkgs.pkgs-errors).sysDepError "dl"))
          (pkgs."casadi_coinmumps" or ((hsPkgs.pkgs-errors).sysDepError "casadi_coinmumps"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          (pkgs."casadi_coinlapack" or ((hsPkgs.pkgs-errors).sysDepError "casadi_coinlapack"))
          (pkgs."casadi_coinmetis" or ((hsPkgs.pkgs-errors).sysDepError "casadi_coinmetis"))
          (pkgs."casadi_coinblas" or ((hsPkgs.pkgs-errors).sysDepError "casadi_coinblas"))
          (pkgs."gfortran" or ((hsPkgs.pkgs-errors).sysDepError "gfortran"))
          (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
          (pkgs."gcc_s" or ((hsPkgs.pkgs-errors).sysDepError "gcc_s"))
          (pkgs."quadmath" or ((hsPkgs.pkgs-errors).sysDepError "quadmath"))
          (pkgs."casadi_sundials_interface" or ((hsPkgs.pkgs-errors).sysDepError "casadi_sundials_interface"))
          (pkgs."casadi_sundials" or ((hsPkgs.pkgs-errors).sysDepError "casadi_sundials"))
          (pkgs."casadi_csparse_interface" or ((hsPkgs.pkgs-errors).sysDepError "casadi_csparse_interface"))
          (pkgs."casadi_csparse" or ((hsPkgs.pkgs-errors).sysDepError "casadi_csparse"))
          (pkgs."casadi_optimal_control" or ((hsPkgs.pkgs-errors).sysDepError "casadi_optimal_control"))
          (pkgs."casadi_control" or ((hsPkgs.pkgs-errors).sysDepError "casadi_control"))
          (pkgs."casadi_tinyxml" or ((hsPkgs.pkgs-errors).sysDepError "casadi_tinyxml"))
          (pkgs."casadi_integration" or ((hsPkgs.pkgs-errors).sysDepError "casadi_integration"))
          (pkgs."casadi_convex_programming" or ((hsPkgs.pkgs-errors).sysDepError "casadi_convex_programming"))
          (pkgs."casadi_nonlinear_programming" or ((hsPkgs.pkgs-errors).sysDepError "casadi_nonlinear_programming"))
          (pkgs."casadi" or ((hsPkgs.pkgs-errors).sysDepError "casadi"))
          (pkgs."dl" or ((hsPkgs.pkgs-errors).sysDepError "dl"))
          ];
        buildable = true;
        };
      };
    }