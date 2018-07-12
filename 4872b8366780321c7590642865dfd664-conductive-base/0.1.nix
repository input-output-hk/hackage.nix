{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "conductive-base";
          version = "0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "renick@gmail.com";
        author = "Renick Bell";
        homepage = "http://www.renickbell.net/doku.php?id=conductive-base";
        url = "";
        synopsis = "a library for livecoding and real-time musical applications";
        description = "Conductive is a set of Haskell libraries for livecoding and real-time music applications. The biggest immediate challenge in using Haskell for computer music was controlling the exact timing of events in a manner similar to that of the Task and Routine functions andPatterns library in SuperCollider. This library is intended to supply such facilities. This library wraps concurrent process manipulation in a way that makes controlling their timing more intuitive for musicians. At the same time, the library aims at being as concise as possible to lessen the burden on the user. Conductive-base is the core library for the Conductive set of libraries. This library includes the useful play, pause, stop, and reset functions, as well as corresponding data types, MusicalEnvironment, Player, and TempoClock.";
        buildType = "Simple";
      };
      components = {
        "conductive-base" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.MissingH
          ];
        };
      };
    }