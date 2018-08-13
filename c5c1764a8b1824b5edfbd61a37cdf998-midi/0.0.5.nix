{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "midi";
        version = "0.0.5";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://darcs.haskell.org/midi/";
      url = "";
      synopsis = "Handling of MIDI messages and files";
      description = "MIDI is the Musical Instrument Digital Interface.\nThe package contains definition of MIDI messages,\nreading and writing MIDI files.\nIt contains no sending and receiving of MIDI messages. Cf. alsa-midi package.\nFor music composition with MIDI output, see Haskore.";
      buildType = "Simple";
    };
    components = {
      "midi" = {
        depends  = if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.event-list)
            (hsPkgs.non-negative)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.event-list)
            (hsPkgs.non-negative)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
          ];
      };
    };
  }