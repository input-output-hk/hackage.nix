{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { sync = false; threaded = true; };
    package = {
      specVersion = "3.4";
      identifier = { name = "broadcast-chan"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2025 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/broadcast-chan";
      url = "";
      synopsis = "Closable, fair, single-wakeup channel type that avoids 0\nreader space leaks.";
      description = "__WARNING:__ While the code in this library should be fairly stable and\nproduction, the API is something I'm still working on. API changes will\nfollow the PVP, but __expect__ breaking API changes in future versions!\n\nA closable, fair, single-wakeup channel that avoids the 0 reader space leak\nthat @\"Control.Concurrent.Chan\"@ from base suffers from.\n\nThe @Chan@ type from @\"Control.Concurrent.Chan\"@ consists of both a read\nand write end combined into a single value. This means there is always at\nleast 1 read end for a @Chan@, which keeps any values written to it alive.\nThis is a problem for applications/libraries that want to have a channel\nthat can have zero listeners.\n\nSuppose we have an library that produces events and we want to let users\nregister to receive events. If we use a channel and write all events to it,\nwe would like to drop and garbage collect any events that take place when\nthere are 0 listeners. The always present read end of @Chan@ from base\nmakes this impossible. We end up with a @Chan@ that forever accumulates\nmore and more events that will never get removed, resulting in a memory\nleak.\n\n@\"BroadcastChan\"@ splits channels into separate read and write ends. Any\nmessage written to a a channel with no existing read end is immediately\ndropped so it can be garbage collected. Once a read end is created, all\nmessages written to the channel will be accessible to that read end.\n\nOnce all read ends for a channel have disappeared and been garbage\ncollected, the channel will return to dropping messages as soon as they are\nwritten.\n\n__Why should I use \"BroadcastChan\" over \"Control.Concurrent.Chan\"?__\n\n* @\"BroadcastChan\"@ is closable,\n\n* @\"BroadcastChan\"@ has no 0 reader space leak,\n\n* @\"BroadcastChan\"@ has comparable or better performance.\n\n__Why should I use \"BroadcastChan\" over various (closable) STM channels?__\n\n* @\"BroadcastChan\"@ is single-wakeup,\n\n* @\"BroadcastChan\"@ is fair,\n\n* @\"BroadcastChan\"@ performs better under contention.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ];
        buildable = true;
      };
      sublibs = {
        "conduit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
          buildable = true;
        };
        "pipes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          ];
          buildable = true;
        };
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."paramtree" or (errorHandler.buildDepError "paramtree"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.le "7.10") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
          buildable = true;
        };
      };
      tests = {
        "basic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
            (hsPkgs."broadcast-chan".components.sublibs.test or (errorHandler.buildDepError "broadcast-chan:test"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "basic-unthreaded" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
            (hsPkgs."broadcast-chan".components.sublibs.test or (errorHandler.buildDepError "broadcast-chan:test"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "parallel-io" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
            (hsPkgs."broadcast-chan".components.sublibs.test or (errorHandler.buildDepError "broadcast-chan:test"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "parallel-io-unthreaded" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
            (hsPkgs."broadcast-chan".components.sublibs.test or (errorHandler.buildDepError "broadcast-chan:test"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "conduit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broadcast-chan".components.sublibs.conduit or (errorHandler.buildDepError "broadcast-chan:conduit"))
            (hsPkgs."broadcast-chan".components.sublibs.test or (errorHandler.buildDepError "broadcast-chan:test"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          ];
          buildable = true;
        };
        "pipes-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broadcast-chan".components.sublibs.pipes or (errorHandler.buildDepError "broadcast-chan:pipes"))
            (hsPkgs."broadcast-chan".components.sublibs.test or (errorHandler.buildDepError "broadcast-chan:test"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "sync" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          ];
          buildable = if flags.sync then true else false;
        };
        "channels" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
          ];
          buildable = true;
        };
        "utilities" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
          ];
          buildable = true;
        };
      };
    };
  }