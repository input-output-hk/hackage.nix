{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
      extra-benchmarks = false;
      examples = false;
      examples-sdl = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streamly";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Harendra Kumar";
        maintainer = "harendra.kumar@gmail.com";
        author = "Harendra Kumar";
        homepage = "https://github.com/composewell/streamly";
        url = "";
        synopsis = "Beautiful Streaming, Concurrent and Reactive Composition";
        description = "Streamly is a monad transformer unifying non-determinism\n(<https://hackage.haskell.org/package/list-t list-t>\\/<https://hackage.haskell.org/package/logict logict>),\nconcurrency (<https://hackage.haskell.org/package/async async>),\nstreaming (<https://hackage.haskell.org/package/conduit conduit>\\/<https://hackage.haskell.org/package/pipes pipes>),\nand FRP (<https://hackage.haskell.org/package/Yampa Yampa>\\/<https://hackage.haskell.org/package/reflex reflex>)\nfunctionality in a concise and intuitive API.\nHigh level concurrency makes concurrent applications almost indistinguishable\nfrom non-concurrent ones.  By changing a single combinator you can control\nwhether the code runs serially or concurrently.  It naturally integrates\nconcurrency with streaming rather than adding it as an afterthought.\nMoreover, it interworks with the popular streaming libraries.\n\nSee the README for an overview and the haddock documentation for full\nreference.  It is recommended to read the comprehensive tutorial module\n\"Streamly.Tutorial\" first. Also see \"Streamly.Examples\" for some working\nexamples.";
        buildType = "Simple";
      };
      components = {
        streamly = {
          depends  = (([
            hsPkgs.base
            hsPkgs.atomic-primops
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.lifted-base
            hsPkgs.lockfree-queue
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.transformers-base
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups) ++ pkgs.lib.optionals (_flags.examples || _flags.examples-sdl) [
            hsPkgs.http-conduit
            hsPkgs.path-io
            hsPkgs.random
          ]) ++ pkgs.lib.optional _flags.examples-sdl hsPkgs.SDL;
        };
        exes = {
          loops = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.streamly
              hsPkgs.base
            ];
          };
          nested-loops = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.streamly
              hsPkgs.base
              hsPkgs.random
            ];
          };
          parallel-loops = {
            depends  = pkgs.lib.optionals _flags.examples [
              hsPkgs.streamly
              hsPkgs.base
              hsPkgs.random
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.streamly
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.containers
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers;
          };
        };
        benchmarks = {
          bench = {
            depends  = ([
              hsPkgs.streamly
              hsPkgs.atomic-primops
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.mtl
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers) ++ pkgs.lib.optionals _flags.extra-benchmarks [
              hsPkgs.list-t
              hsPkgs.logict
              hsPkgs.machines
              hsPkgs.simple-conduit
              hsPkgs.transient
            ];
          };
        };
      };
    }