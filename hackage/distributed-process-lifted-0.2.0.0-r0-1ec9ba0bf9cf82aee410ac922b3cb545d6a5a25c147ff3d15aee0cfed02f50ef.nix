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
      identifier = {
        name = "distributed-process-lifted";
        version = "0.2.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@jeremyhuffman.com";
      author = "Jeremy Huffman";
      homepage = "https://github.com/jeremyjh/distributed-process-lifted";
      url = "";
      synopsis = "monad-control style typeclass and transformer instances for Process monad.";
      description = "This package provides typeclasses and functions for lifting functions and control operations (such as spawnLocal) from the @Process@ monad\ninto transformer stacks based on the Process monad. It uses\n<http://hackage.haskell.org/package/monad-control-1.0.0.1/docs/Control-Monad-Trans-Control.html#t:MonadTransControl MonadTransControl>\nand a new typeclass 'Control.Distributed.Process.Lifted.Class.MonadProcessBase' which plays the same role as\n<http://hackage.haskell.org/package/monad-control-1.0.0.1/docs/Control-Monad-Trans-Control.html#t:MonadBaseControl MonadBaseControl>.\nInstances are provided for all the <http://hackage.haskell.org/package/transformers transformers> types - so stacks based on any of these\n(e.g. @ReaderT Config Process a@) can be used seamlessly.\n\nThe Control.Distributed.Process.Lifted module exports all the same symbols as found in\nControl.Distributed.Process, but they are all generalized.\nWhere appropriate it re-exports the more general functions from lifted-base (e.g. catch) rather than the versions re-implemented for @Process@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
          (hsPkgs."distributed-process-monad-control" or (buildDepError "distributed-process-monad-control"))
          (hsPkgs."network-transport" or (buildDepError "network-transport"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ];
        };
      tests = {
        "testlifted" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."distributed-process-lifted" or (buildDepError "distributed-process-lifted"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."network-transport" or (buildDepError "network-transport"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."network-transport-tcp" or (buildDepError "network-transport-tcp"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."rematch" or (buildDepError "rematch"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }