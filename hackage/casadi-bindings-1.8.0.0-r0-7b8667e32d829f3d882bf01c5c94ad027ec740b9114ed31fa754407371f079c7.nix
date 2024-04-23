{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."casadi_ipopt_interface" or (errorHandler.sysDepError "casadi_ipopt_interface"))
          (pkgs."casadi_ipopt" or (errorHandler.sysDepError "casadi_ipopt"))
          (pkgs."dl" or (errorHandler.sysDepError "dl"))
          (pkgs."casadi_coinmumps" or (errorHandler.sysDepError "casadi_coinmumps"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          (pkgs."casadi_coinlapack" or (errorHandler.sysDepError "casadi_coinlapack"))
          (pkgs."casadi_coinmetis" or (errorHandler.sysDepError "casadi_coinmetis"))
          (pkgs."casadi_coinblas" or (errorHandler.sysDepError "casadi_coinblas"))
          (pkgs."gfortran" or (errorHandler.sysDepError "gfortran"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
          (pkgs."gcc_s" or (errorHandler.sysDepError "gcc_s"))
          (pkgs."quadmath" or (errorHandler.sysDepError "quadmath"))
          (pkgs."casadi_sundials_interface" or (errorHandler.sysDepError "casadi_sundials_interface"))
          (pkgs."casadi_sundials" or (errorHandler.sysDepError "casadi_sundials"))
          (pkgs."casadi_csparse_interface" or (errorHandler.sysDepError "casadi_csparse_interface"))
          (pkgs."casadi_csparse" or (errorHandler.sysDepError "casadi_csparse"))
          (pkgs."casadi_optimal_control" or (errorHandler.sysDepError "casadi_optimal_control"))
          (pkgs."casadi_control" or (errorHandler.sysDepError "casadi_control"))
          (pkgs."casadi_tinyxml" or (errorHandler.sysDepError "casadi_tinyxml"))
          (pkgs."casadi_integration" or (errorHandler.sysDepError "casadi_integration"))
          (pkgs."casadi_convex_programming" or (errorHandler.sysDepError "casadi_convex_programming"))
          (pkgs."casadi_nonlinear_programming" or (errorHandler.sysDepError "casadi_nonlinear_programming"))
          (pkgs."casadi" or (errorHandler.sysDepError "casadi"))
          (pkgs."dl" or (errorHandler.sysDepError "dl"))
        ];
        buildable = true;
      };
    };
  }