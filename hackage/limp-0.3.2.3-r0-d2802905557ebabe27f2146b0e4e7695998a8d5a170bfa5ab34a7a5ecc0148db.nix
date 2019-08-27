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
      identifier = { name = "limp"; version = "0.3.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "amos.robinson@gmail.com";
      author = "Amos Robinson";
      homepage = "https://github.com/amosr/limp";
      url = "";
      synopsis = "representation of Integer Linear Programs";
      description = "This package provides two representations for linear programs: \"Numeric.Limp.Program\", which is what I expect end-users to use, and\n\"Numeric.Limp.Canon\", which is simpler, but would be less nice for writing linear programs.\nYou can convert programs from the Program representation to the Canon representation using \"Numeric.Limp.Canon.Convert\", and then pretty-print the program using \"Numeric.Limp.Canon.Pretty\".\nThere is a very simple branch-and-bound solver in \"Numeric.Limp.Solve.Branch.Simple\", and a simplex solver for relaxed (real only) programs in \"Numeric.Limp.Solve.Simplex.Maps\".\nSee the limp-cbc package for a simple external solver.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."limp" or (buildDepError "limp"))
            ];
          };
        };
      };
    }