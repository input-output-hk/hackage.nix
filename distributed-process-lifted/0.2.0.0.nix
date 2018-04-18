{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
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
        distributed-process-lifted = {
          depends  = [
            hsPkgs.base
            hsPkgs.distributed-process
            hsPkgs.distributed-process-monad-control
            hsPkgs.network-transport
            hsPkgs.lifted-base
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.deepseq
          ];
        };
        tests = {
          testlifted = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.transformers
              hsPkgs.distributed-process
              hsPkgs.distributed-process-lifted
              hsPkgs.binary
              hsPkgs.network-transport
              hsPkgs.lifted-base
              hsPkgs.network-transport-tcp
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.rematch
              hsPkgs.HUnit
            ];
          };
        };
      };
    }