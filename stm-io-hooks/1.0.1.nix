{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stm-io-hooks";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Peter Robinson <thaldyron@gmail.com>";
        author = "Peter Robinson 2009-2014, Chris Kuklewicz 2006";
        homepage = "";
        url = "";
        synopsis = "STM with IO hooks";
        description = "This library provides a Software Transactional Memory (STM) monad with commit and retry IO hooks.\nA retry-action is run (at least once) if the transaction retries, while commit-actions are\nexecuted iff the transaction commits. The AdvSTM monad also gives some atomicity\nguarantees for commit-actions:\n\n* When a TVar is modified in a transaction and this transaction commits,\nthe update remains invisible to other threads until the corresponding\nonCommit action is run.\n\n* If the onCommit action throws an exception, the original values of\nthe modified TVars are restored.\n\nNote: The package can be used as a drop-in replacement for\n'Control.Concurrent.STM'.\n\nFeedback is welcome!";
        buildType = "Simple";
      };
      components = {
        stm-io-hooks = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }