let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = [
          (pkgs."stdc++" or (sysDepError "stdc++"))
          (pkgs."casadi_ipopt_interface" or (sysDepError "casadi_ipopt_interface"))
          (pkgs."casadi_ipopt" or (sysDepError "casadi_ipopt"))
          (pkgs."dl" or (sysDepError "dl"))
          (pkgs."casadi_coinmumps" or (sysDepError "casadi_coinmumps"))
          (pkgs."pthread" or (sysDepError "pthread"))
          (pkgs."casadi_coinlapack" or (sysDepError "casadi_coinlapack"))
          (pkgs."casadi_coinmetis" or (sysDepError "casadi_coinmetis"))
          (pkgs."casadi_coinblas" or (sysDepError "casadi_coinblas"))
          (pkgs."gfortran" or (sysDepError "gfortran"))
          (pkgs."m" or (sysDepError "m"))
          (pkgs."gcc_s" or (sysDepError "gcc_s"))
          (pkgs."quadmath" or (sysDepError "quadmath"))
          (pkgs."casadi_sundials_interface" or (sysDepError "casadi_sundials_interface"))
          (pkgs."casadi_sundials" or (sysDepError "casadi_sundials"))
          (pkgs."casadi_csparse_interface" or (sysDepError "casadi_csparse_interface"))
          (pkgs."casadi_csparse" or (sysDepError "casadi_csparse"))
          (pkgs."casadi_optimal_control" or (sysDepError "casadi_optimal_control"))
          (pkgs."casadi_control" or (sysDepError "casadi_control"))
          (pkgs."casadi_tinyxml" or (sysDepError "casadi_tinyxml"))
          (pkgs."casadi_integration" or (sysDepError "casadi_integration"))
          (pkgs."casadi_convex_programming" or (sysDepError "casadi_convex_programming"))
          (pkgs."casadi_nonlinear_programming" or (sysDepError "casadi_nonlinear_programming"))
          (pkgs."casadi" or (sysDepError "casadi"))
          (pkgs."dl" or (sysDepError "dl"))
          ];
        };
      };
    }