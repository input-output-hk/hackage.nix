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
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "chaselev-deque"; version = "0.5.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan R. Newton, Edward Kmett";
      homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
      url = "";
      synopsis = "Chase & Lev work-stealing lock-free double-ended queues (deques).";
      description = "A queue that is push/pop on one end and pop-only on the other.  These are commonly\nused for work-stealing.\nThis implementation derives directly from the pseudocode in the 2005 SPAA paper:\n\n\"http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.170.1097&rep=rep1&type=pdf\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bits-atomic" or (buildDepError "bits-atomic"))
          (hsPkgs."abstract-deque" or (buildDepError "abstract-deque"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        };
      tests = {
        "test-chaselev-deque" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."abstract-deque" or (buildDepError "abstract-deque"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }