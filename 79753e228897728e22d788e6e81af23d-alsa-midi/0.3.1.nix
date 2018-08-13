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
        version = "0.3.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn";
      homepage = "http://open-projects.net/~shahn/index.php?seite=code";
      url = "";
      synopsis = "Bindings for the ALSA sequencer API (MIDI stuff)";
      description = "Bindings for the ALSA sequencer API (MIDI stuff)\nSince there is also\n<http://code.haskell.org/alsa/>\nwhich aims at a more complete interface to ALSA\nwe will no longer maintain this one.";
      buildType = "Simple";
    };
    components = {
      "alsa-midi" = {
        depends  = if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.midi)
            (hsPkgs.event-list)
            (hsPkgs.non-negative)
            (hsPkgs.array)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.midi)
            (hsPkgs.event-list)
            (hsPkgs.non-negative)
          ];
        libs = [ (pkgs."asound") ];
      };
      exes = {
        "playnote" = {
          libs = [ (pkgs."asound") ];
        };
        "playmidi" = {
          libs = [ (pkgs."asound") ];
        };
        "mididump" = {
          libs = [ (pkgs."asound") ];
        };
      };
    };
  }