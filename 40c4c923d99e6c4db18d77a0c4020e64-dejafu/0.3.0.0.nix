{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dejafu";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mike@barrucadu.co.uk";
        author = "Michael Walker";
        homepage = "https://github.com/barrucadu/dejafu";
        url = "";
        synopsis = "Overloadable primitives for testable, potentially non-deterministic, concurrency.";
        description = "/[Déjà Fu is] A martial art in which the user's limbs move in time as well as space, […] It is best described as \"the feeling that you have been kicked in the head this way before\"/ -- Terry Pratchett, Thief of Time\n\nConcurrency is nice, deadlocks and race conditions not so much. The\n@Par@ monad family, as defined in\n<https://hackage.haskell.org/package/abstract-par/docs/Control-Monad-Par-Class.html abstract-par>\nprovides deterministic parallelism, but sometimes we can tolerate a\nbit of nondeterminism.\n\nThis package provides a class of monads for potentially\nnondeterministic concurrency, with an interface in the spirit of\nGHC's normal concurrency abstraction.\n\n== @MonadConc@ with 'IO':\n\nThe intention of the @MonadConc@ class is to provide concurrency\nwhere any apparent nondeterminism arises purely from the scheduling\nbehaviour. To put it another way, a given computation, parametrised\nwith a fixed set of scheduling decisions, is deterministic. This\nassumption is used by the testing functionality provided by\nTest.DejaFu.\n\nWhilst this assumption may not hold in general when 'IO' is\ninvolved, you should strive to produce test cases where it does.\n\n== Memory Model\n\nThe testing functionality supports a few different memory models,\nfor computations which use non-synchronised `CRef` operations. The\nsupported models are:\n\n* __Sequential Consistency:__ A program behaves as a simple\ninterleaving of the actions in different threads. When a CRef is\nwritten to, that write is immediately visible to all threads.\n\n* __Total Store Order (TSO):__ Each thread has a write buffer. A\nthread sees its writes immediately, but other threads will only\nsee writes when they are committed, which may happen later. Writes\nare committed in the same order that they are created.\n\n* __Partial Store Order (PSO):__ Each CRef has a write buffer. A\nthread sees its writes immediately, but other threads will only\nsee writes when they are committed, which may happen later. Writes\nto different CRefs are not necessarily committed in the same order\nthat they are created.\n\nIf a testing function does not take the memory model as a parameter,\nit uses TSO.\n\nSee the <https://github.com/barrucadu/dejafu README> for more\ndetails.";
        buildType = "Simple";
      };
      components = {
        dejafu = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.atomic-primops
            hsPkgs.containers
            hsPkgs.dpor
            hsPkgs.deepseq
            hsPkgs.exceptions
            hsPkgs.monad-control
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.transformers-base
          ];
        };
      };
    }