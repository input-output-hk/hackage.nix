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
      identifier = { name = "arpack"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Thomas Tuegel";
      maintainer = "ttuegel@gmail.com";
      author = "Thomas Tuegel";
      homepage = "";
      url = "";
      synopsis = "Solve large scale eigenvalue problems";
      description = "Bindings to ARPACK, a Fortran package implementing the implicitly restarted\nArnoldi (Lanczos) method for solving large scale eigenvalue problems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."concurrent-extra" or (buildDepError "concurrent-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."control-monad-loop" or (buildDepError "control-monad-loop"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."ieee754" or (buildDepError "ieee754"))
          (hsPkgs."storable-complex" or (buildDepError "storable-complex"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          ];
        pkgconfig = [ (pkgconfPkgs."arpack" or (pkgConfDepError "arpack")) ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."arpack" or (buildDepError "arpack"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
            ];
          };
        };
      };
    }