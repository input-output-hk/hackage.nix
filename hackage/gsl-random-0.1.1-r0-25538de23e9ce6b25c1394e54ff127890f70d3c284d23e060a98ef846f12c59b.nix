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
    flags = {
      atlas = false;
      gsl = false;
      mkl = false;
      veclib = false;
      custom = false;
      };
    package = {
      specVersion = "1.2.0";
      identifier = { name = "gsl-random"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
      maintainer = "Patrick Perry <patperry@stanford.edu>";
      author = "Patrick Perry";
      homepage = "http://stat.stanford.edu/~patperry/code/gsl-random";
      url = "";
      synopsis = "Bindings the the GSL random number generation facilities.";
      description = "Bindings to the GNU Scientific Library random number generators and random\ndistributions.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = ((((pkgs.lib).optionals (flags.atlas) [
          (pkgs."gsl" or (sysDepError "gsl"))
          (pkgs."cblas" or (sysDepError "cblas"))
          (pkgs."atlas" or (sysDepError "atlas"))
          (pkgs."m" or (sysDepError "m"))
          ] ++ (pkgs.lib).optionals (flags.gsl) [
          (pkgs."gsl" or (sysDepError "gsl"))
          (pkgs."gslcblas" or (sysDepError "gslcblas"))
          (pkgs."m" or (sysDepError "m"))
          ]) ++ (pkgs.lib).optionals (flags.mkl) (if system.isX86_64
          then [
            (pkgs."gsl" or (sysDepError "gsl"))
            (pkgs."mkl_lapack" or (sysDepError "mkl_lapack"))
            (pkgs."mkl_intel_lp64" or (sysDepError "mkl_intel_lp64"))
            (pkgs."mkl_sequential" or (sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or (sysDepError "mkl_core"))
            (pkgs."m" or (sysDepError "m"))
            ]
          else [
            (pkgs."gsl" or (sysDepError "gsl"))
            (pkgs."mkl_lapack" or (sysDepError "mkl_lapack"))
            (pkgs."mkl_intel" or (sysDepError "mkl_intel"))
            (pkgs."mkl_sequential" or (sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or (sysDepError "mkl_core"))
            (pkgs."m" or (sysDepError "m"))
            ])) ++ (pkgs.lib).optionals (flags.veclib) [
          (pkgs."gsl" or (sysDepError "gsl"))
          (pkgs."cblas" or (sysDepError "cblas"))
          (pkgs."m" or (sysDepError "m"))
          ]) ++ (pkgs.lib).optionals (!flags.atlas && !flags.gsl && !flags.mkl && !flags.veclib && !flags.custom) [
          (pkgs."gsl" or (sysDepError "gsl"))
          (pkgs."gslcblas" or (sysDepError "gslcblas"))
          (pkgs."m" or (sysDepError "m"))
          ];
        };
      };
    }