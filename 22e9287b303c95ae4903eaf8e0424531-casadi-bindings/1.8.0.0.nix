{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "casadi-bindings";
          version = "1.8.0.0";
        };
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
        casadi-bindings = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
          libs = [
            pkgs."stdc++"
            pkgs.casadi_ipopt_interface
            pkgs.casadi_ipopt
            pkgs.dl
            pkgs.casadi_coinmumps
            pkgs.pthread
            pkgs.casadi_coinlapack
            pkgs.casadi_coinmetis
            pkgs.casadi_coinblas
            pkgs.gfortran
            pkgs.m
            pkgs.gcc_s
            pkgs.quadmath
            pkgs.casadi_sundials_interface
            pkgs.casadi_sundials
            pkgs.casadi_csparse_interface
            pkgs.casadi_csparse
            pkgs.casadi_optimal_control
            pkgs.casadi_control
            pkgs.casadi_tinyxml
            pkgs.casadi_integration
            pkgs.casadi_convex_programming
            pkgs.casadi_nonlinear_programming
            pkgs.casadi
            pkgs.dl
          ];
        };
      };
    }