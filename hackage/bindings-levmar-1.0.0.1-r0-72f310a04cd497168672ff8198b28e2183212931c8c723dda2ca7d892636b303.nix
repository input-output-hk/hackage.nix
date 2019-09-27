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
    flags = { mkl = false; accelerate = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bindings-levmar"; version = "1.0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2009-2010 Roel van Dijk & Bas van Dijk";
      maintainer = "vandijk.roel@gmail.com, v.dijk.bas@gmail.com";
      author = "Roel van Dijk & Bas van Dijk";
      homepage = "https://github.com/basvandijk/bindings-levmar/";
      url = "";
      synopsis = "Low level bindings to the C levmar (Levenberg-Marquardt) library";
      description = "See the @levmar@ package for a high-level wrapper\naround this package.\n\nThe Levenberg-Marquardt algorithm is an iterative\ntechnique that finds a local minimum of a function that\nis expressed as the sum of squares of nonlinear\nfunctions. It has become a standard technique for\nnonlinear least-squares problems and can be thought of\nas a combination of steepest descent and the\nGauss-Newton method. When the current solution is far\nfrom the correct one, the algorithm behaves like a\nsteepest descent method: slow, but guaranteed to\nconverge. When the current solution is close to the\ncorrect solution, it becomes a Gauss-Newton method.\n\nBoth unconstrained and constrained (under linear\nequations and box constraints) Levenberg-Marquardt\nvariants are included.  All functions have Double and\nFloat variants.\n\nSee: <http://www.ics.forth.gr/~lourakis/levmar/>\n\nNote that the included C library is lightly patched to\nmake it pure. This way the functions can be used inside\n@unsafePerformIO@.\n\nA note regarding the license:\n\nAll files EXCEPT those in the levmar-2.4 directory fall\nunder the BSD3 license. The levmar C library, which is\nbundled with this binding, falls under the GPL. If you\nbuild a program which is linked with this binding then\nit is also linked with levmar. This means such a\nprogram can only by distributed under the terms of the\nGPL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bindings-DSL" or (buildDepError "bindings-DSL"))
          ];
        libs = if flags.mkl
          then [
            (pkgs."mkl_lapack" or (sysDepError "mkl_lapack"))
            (pkgs."mkl_sequential" or (sysDepError "mkl_sequential"))
            (pkgs."mkl_core" or (sysDepError "mkl_core"))
            ] ++ (if system.isX86_64
            then [ (pkgs."mkl_intel_lp64" or (sysDepError "mkl_intel_lp64")) ]
            else [ (pkgs."mkl_intel" or (sysDepError "mkl_intel")) ])
          else [
            (pkgs."lapack" or (sysDepError "lapack"))
            (pkgs."blas" or (sysDepError "blas"))
            ];
        frameworks = (pkgs.lib).optional (flags.accelerate) (pkgs."Accelerate" or (sysDepError "Accelerate"));
        buildable = true;
        };
      };
    }