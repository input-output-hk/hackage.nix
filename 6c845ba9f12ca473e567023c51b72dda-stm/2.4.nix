{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stm";
          version = "2.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Software Transactional Memory";
        description = "A modular composable concurrency abstraction.\n\nChanges in version 2.4\n\n* Added \"Control.Concurrent.STM.TQueue\" (a faster @TChan@)\n\n* Added \"Control.Concurrent.STM.TBQueue\" (a bounded channel based on @TQueue@)\n\n* @TChan@ has an @Eq@ instances\n\n* Added @newBroadcastTChan@ and @newBroadcastTChanIO@\n\n* Some performance improvements for @TChan@\n\n* Added @cloneTChan@";
        buildType = "Simple";
      };
      components = {
        "stm" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.array
          ] ++ [
            hsPkgs.base
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") hsPkgs.base;
        };
      };
    }