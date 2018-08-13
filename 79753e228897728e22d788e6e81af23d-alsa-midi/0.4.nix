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
        name = "alsa-midi";
        version = "0.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "http://darcs.haskell.org/alsa-midi/";
      synopsis = "Bindings for the ALSA sequencer API (MIDI stuff)";
      description = "Bindings for the ALSA sequencer API (MIDI stuff)\nSince there is also\n<http://code.haskell.org/alsa/>\nwhich aims at a more complete interface to ALSA\nwe will no longer maintain this one.\n\nSee \"Sound.ALSA.Sequencer.Play\" for how to play Haskore songs in realtime via ALSA.";
      buildType = "Simple";
    };
    components = {
      "alsa-midi" = {
        depends  = [
          (hsPkgs.midi)
          (hsPkgs.event-list)
          (hsPkgs.non-negative)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
        ] ++ (if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ]);
        libs = [ (pkgs.asound) ];
      };
      exes = {
        "playnote" = {
          libs = [ (pkgs.asound) ];
        };
        "playmidi" = {
          libs = [ (pkgs.asound) ];
        };
        "mididump" = {
          libs = [ (pkgs.asound) ];
        };
      };
    };
  }