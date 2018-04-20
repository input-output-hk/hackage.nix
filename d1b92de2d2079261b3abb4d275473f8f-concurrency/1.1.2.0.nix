{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "concurrency";
          version = "1.1.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mike@barrucadu.co.uk";
        author = "Michael Walker";
        homepage = "https://github.com/barrucadu/dejafu";
        url = "";
        synopsis = "Typeclasses, functions, and data types for concurrency and STM.";
        description = "A typeclass abstraction over much of Control.Concurrent (and some\nextras!). If you're looking for a general introduction to Haskell\nconcurrency, you should check out the excellent Parallel and\nConcurrent Programming in Haskell, by Simon Marlow. If you are\nalready familiar with concurrent Haskell, just change all the\nimports from Control.Concurrent.* to Control.Concurrent.Classy.* and\nfix the type errors.\n\nA brief list of supported functionality:\n\n* Threads: the @forkIO*@ and @forkOn*@ functions, although bound\nthreads are not supported.\n\n* Getting and setting capablities.\n\n* Yielding and delaying.\n\n* Mutable state: STM, @MVar@, and @IORef@.\n\n* Atomic compare-and-swap for @IORef@.\n\n* Exceptions.\n\n* All of the data structures in Control.Concurrent.* and\nControl.Concurrent.STM.* have typeclass-abstracted equivalents.\n\n* A reimplementation of the\n<https://hackage.haskell.org/package/async async> package,\nproviding a higher-level interface over threads, allowing users to\nconveniently run @MonadConc@ operations asynchronously and wait\nfor their results.\n\nThis is quite a rich set of functionality, although it is not\ncomplete. If there is something else you need, file an issue!\n\nThis used to be part of dejafu, but with the dejafu-0.4.0.0 release,\nit was split out into its own package.\n\n== Why this and not something else?\n\n* Why not base: like lifted-base, concurrency uses typeclasses to\nmake function types more generic. This automatically eliminates\ncalls to `lift` in many cases, resulting in clearer and simpler\ncode.\n\n* Why not lifted-base: fundamentally, lifted-base is still using\nactual threads and actual mutable variables. When using a\nconcurrency-specific typeclass, this isn't necessarily the case.\nThe dejafu library provides non-IO-based implementations to allow\ntesting concurrent programs.\n\n* Why not IOSpec: IOSpec provides many of the operations this\nlibrary does, however it uses a free monad to do so, which has\nextra allocation overhead. Furthermore, it does not expose enough\nof the internals in order to accurately test real-execution\nsemantics, such as relaxed memory.\n\nSee the <https://github.com/barrucadu/dejafu README> for more\ndetails.";
        buildType = "Simple";
      };
      components = {
        concurrency = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.atomic-primops
            hsPkgs.exceptions
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.transformers
          ];
        };
      };
    }