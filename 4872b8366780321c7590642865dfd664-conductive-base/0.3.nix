{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "conductive-base";
        version = "0.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "renick@gmail.com";
      author = "Renick Bell";
      homepage = "http://www.renickbell.net/doku.php?id=conductive-base";
      url = "";
      synopsis = "a library for live coding and real-time musical applications";
      description = "Conductive is a set of Haskell packages for live coding and real-time music applications. One of its central purposes is controlling the timing of events. Conductive-base is the core library for the Conductive set of libraries. This library includes the play, pause, stop, and reset functions, as well as corresponding data types, MusicalEnvironment, Player, and TempoClock.";
      buildType = "Simple";
    };
    components = {
      "conductive-base" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.time)
        ];
      };
    };
  }