{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stm-delay";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Joseph Adams 2012";
        maintainer = "joeyadams3.14159@gmail.com";
        author = "Joey Adams";
        homepage = "https://github.com/joeyadams/haskell-stm-delay";
        url = "";
        synopsis = "Updatable one-shot timer polled with STM";
        description = "This library lets you create a one-shot timer, poll it using STM,\nand update it to ring at a different time than initially specified.\n\nIt uses GHC event manager timeouts when available (GHC 7.2+, @-threaded@,\nnon-Windows OS), yielding performance similar to @threadDelay@ and\n@registerDelay@.  Otherwise, it falls back to forked threads and\n@threadDelay@.";
        buildType = "Simple";
      };
      components = {
        "stm-delay" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.stm
              hsPkgs.stm-delay
            ];
          };
          "test-threaded" = {
            depends  = [
              hsPkgs.base
              hsPkgs.stm
              hsPkgs.stm-delay
            ];
          };
        };
      };
    }