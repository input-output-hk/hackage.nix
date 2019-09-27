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
      identifier = { name = "hlbfgsb"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan@hlbfgsb.ksp.sk";
      author = "Ivan Labáth";
      homepage = "http://people.ksp.sk/~ivan/hlbfgsb";
      url = "";
      synopsis = "Haskell binding to L-BFGS-B version 3.0";
      description = "Haskell bindings to Nocedal's 3.0 version\nof the Limited memory - Broyden Fletcher Goldfarb Shanno - Bounded\noptimization algorithm.\n\nInitial version, but functional. So far no support for limiting iteration\ncount. A more powerful interface should be developed.\n\nNotice: The fortran code is marked pure, althugh it tends to write\nto standard output at troubled times (should be fixed at some point in time).\n\nFrom homepage:\nSoftware for Large-scale Bound-constrained Optimization L-BFGS-B is a\nlimited-memory quasi-Newton code for bound-constrained optimization, i.e.\nfor problems where the only constraints are of the form l <= x <= u. The\ncurrent release is version 3.0. The distribution file was last changed on\n2011-08-02.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = [ (pkgs."gfortran" or (sysDepError "gfortran")) ];
        build-tools = [
          (hsPkgs.buildPackages.gfortran or (pkgs.buildPackages.gfortran or (buildToolDepError "gfortran")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."hlbfgsb" or (buildDepError "hlbfgsb"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }