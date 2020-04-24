{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
          (hsPkgs."distributed-process-monad-control" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-monad-control"))
          (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "testlifted" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
            (hsPkgs."distributed-process-lifted" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-lifted"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."rematch" or ((hsPkgs.pkgs-errors).buildDepError "rematch"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }