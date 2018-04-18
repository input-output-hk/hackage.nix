{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stm-delay";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Joseph Adams 2012";
        maintainer = "joeyadams3.14159@gmail.com";
        author = "Joey Adams";
        homepage = "https://github.com/joeyadams/haskell-stm-delay";
        url = "";
        synopsis = "Updatable one-shot timer polled with STM";
        description = "This library lets you create a one-shot timer, poll it using STM,\nand update it to ring at a different time than initially specified.\n\nIt uses GHC event manager timeouts when available\n(GHC 7.2+, @-threaded@, non-Windows OS), yielding performance similar\nto @threadDelay@ and @registerDelay@.  Otherwise, it falls back to\nforked threads and @threadDelay@.\n\n[0.1.1]\nAdd tryWaitDelayIO, improve performance for certain cases of @newDelay@\nand @updateDelay@, and improve example.";
        buildType = "Simple";
      };
      components = {
        stm-delay = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.stm
              hsPkgs.stm-delay
            ];
          };
          test-threaded = {
            depends  = [
              hsPkgs.base
              hsPkgs.stm
              hsPkgs.stm-delay
            ];
          };
        };
      };
    }