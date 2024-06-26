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
      identifier = { name = "casadi-bindings"; version = "1.9.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2013-2014 Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "low level bindings to CasADi";
      description = "Debian/Ubuntu instructions\n\nVersion numbers correspond to the C++ library version numbers except the very last number which may indicate breaking changes.\n\nThis only works on Debian/Ubuntu at the moment (sorry).\n\nInstall libcasadi from a .deb package here: https://github.com/casadi/casadi/releases, I use libcasadi-shared. (Get the version corresponding to the current casadi-bindings version, for example casadi-bindings-1.9.0.0 is libcasadi 1.9.0)\n\nThen,\n- `cabal update; cabal install casadi-bindings`\n\nTemporary note: there is something wrong with casadi and ipopt related to http://list.coin-or.org/pipermail/ipopt/2014-April/003670.html, and https://github.com/casadi/casadi/issues/1075. At the moment this .cabal package works for me as is, but YMMV";
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
        pkgconfig = [
          (pkgconfPkgs."ipopt" or (errorHandler.pkgConfDepError "ipopt"))
        ];
        buildable = true;
      };
    };
  }