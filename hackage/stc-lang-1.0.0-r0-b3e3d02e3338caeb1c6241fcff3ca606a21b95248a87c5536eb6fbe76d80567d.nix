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
    flags = { debug-sched = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "stc-lang"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 Norman Rink, Sebastian Ertel, Justus Adam";
      maintainer = "sebastian.ertel@tu-dresden.de";
      author = "Norman Rink, Sebastian Ertel, Justus Adam";
      homepage = "https://github.com/ohua-dev/stc-lang#readme";
      url = "";
      synopsis = "A library for implicit, monadic dataflow parallelism";
      description = "See the <https://github.com/ohua-dev/stc-lang#readme readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."BoundedChan" or (buildDepError "BoundedChan"))
          (hsPkgs."abstract-par" or (buildDepError "abstract-par"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."monad-par" or (buildDepError "monad-par"))
          (hsPkgs."monad-par-extras" or (buildDepError "monad-par-extras"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "ohua-stream-bench" = {
          depends = [
            (hsPkgs."BoundedChan" or (buildDepError "BoundedChan"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hashtables" or (buildDepError "hashtables"))
            (hsPkgs."hedis" or (buildDepError "hedis"))
            (hsPkgs."hw-kafka-client" or (buildDepError "hw-kafka-client"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-aeson" or (buildDepError "microlens-aeson"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."stc-lang" or (buildDepError "stc-lang"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."uuid-types" or (buildDepError "uuid-types"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          };
        };
      tests = {
        "statefulness-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."stc-lang" or (buildDepError "stc-lang"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }