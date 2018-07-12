{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rolling-queue";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Joseph Adams 2012";
        maintainer = "joeyadams3.14159@gmail.com";
        author = "Joey Adams";
        homepage = "https://github.com/joeyadams/haskell-rolling-queue";
        url = "";
        synopsis = "Bounded channel for STM that discards old entries when full";
        description = "This package provides a FIFO channel for STM supporting a size limit.  When\nthis limit is reached, older entries are discarded to make way for newer\nentries.\n\nThe motivation for this is logging.  If log entries are written to a plain\n@TChan@, the program will use a lot of memory if it produces log entries\nfaster than they can be processed.  If log entries are written to a bounded\nchannel where writes block (e.g. the @stm-chans@ package), the program may\ndeadlock if the log channel fills up.  With 'Data.STM.RollingQueue', old\nentries will be discarded instead.\n\nPossible improvements (not available in 'Data.STM.RollingQueue') include:\n\n* Discard lower-priority entries first.\n\n* Discard every other entry, so some of the older entries will still be\navailable.";
        buildType = "Simple";
      };
      components = {
        "rolling-queue" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }