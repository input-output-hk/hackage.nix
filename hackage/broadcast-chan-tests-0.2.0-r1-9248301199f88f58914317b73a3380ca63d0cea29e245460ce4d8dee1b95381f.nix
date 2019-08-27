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
      identifier = { name = "broadcast-chan-tests"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2018 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/broadcast-chan";
      url = "";
      synopsis = "Helpers for generating tests for broadcast-chan";
      description = "Provides helpers for implementing the streaming/concurrency tests used by\nbroadcast-chan, broadcast-chan-conduit, and broadcast-chan-pipes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."broadcast-chan" or (buildDepError "broadcast-chan"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."paramtree" or (buildDepError "paramtree"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."tasty" or (buildDepError "tasty"))
          (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
          (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
          (hsPkgs."tasty-travis" or (buildDepError "tasty-travis"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."bifunctors" or (buildDepError "bifunctors"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."transformers" or (buildDepError "transformers"));
        };
      tests = {
        "basic" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."broadcast-chan" or (buildDepError "broadcast-chan"))
            (hsPkgs."broadcast-chan-tests" or (buildDepError "broadcast-chan-tests"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "basic-unthreaded" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."broadcast-chan" or (buildDepError "broadcast-chan"))
            (hsPkgs."broadcast-chan-tests" or (buildDepError "broadcast-chan-tests"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "parallel-io" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."broadcast-chan" or (buildDepError "broadcast-chan"))
            (hsPkgs."broadcast-chan-tests" or (buildDepError "broadcast-chan-tests"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }