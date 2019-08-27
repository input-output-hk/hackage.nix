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
      specVersion = "1.2";
      identifier = { name = "funsat"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Denis Bueno <dbueno@gmail.com>";
      author = "Denis Bueno";
      homepage = "http://github.com/dbueno/funsat";
      url = "";
      synopsis = "A modern DPLL-style SAT solver";
      description = "Funsat is a native Haskell SAT solver that uses modern techniques for\nsolving SAT instances.  Current features include two-watched literals,\nconflict-directed learning, non-chronological backtracking, a VSIDS-like\ndynamic variable ordering, and restarts.  Our goal is to facilitate\nconvenient embedding of a reasonably fast SAT solver as a constraint\nsolving backend in other applications.\nCurrently along this theme we provide unsatisfiable core generation (see\n\"Funsat.Resolution\") and a logical circuit interface (see \"Funsat.Circuit\").\nNew in 0.6.2: works with ghc-6.12 and fixed some space leaks. =/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."parse-dimacs" or (buildDepError "parse-dimacs"))
          (hsPkgs."bitset" or (buildDepError "bitset"))
          (hsPkgs."bimap" or (buildDepError "bimap"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          ];
        };
      exes = {
        "funsat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."parse-dimacs" or (buildDepError "parse-dimacs"))
            (hsPkgs."bitset" or (buildDepError "bitset"))
            (hsPkgs."bimap" or (buildDepError "bimap"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }