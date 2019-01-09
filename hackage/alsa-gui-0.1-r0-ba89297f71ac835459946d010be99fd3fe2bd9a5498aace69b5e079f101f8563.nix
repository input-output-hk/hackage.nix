{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "alsa-gui"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Henning Thielemann <alsa@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Some simple interactive programs for sending MIDI control messages via ALSA";
      description = "Some simple interactive programs for sending MIDI control messages via ALSA.\nThe GUI uses wxHaskell.\nCurrently we provide these programs:\n\n* Send @All Notes Off@ and @All Sounds Off@ events.\n\n* Show several sliders, that trigger sending MIDI controller messages.\n\n* Show a list widget, that triggers MIDI program changes.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "alsa-midi-mode" = {
          depends = [
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.midi-alsa)
            (hsPkgs.midi)
            (hsPkgs.alsa-seq)
            (hsPkgs.alsa-core)
            (hsPkgs.base)
            ];
          };
        "alsa-midi-program" = {
          depends = [
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.alsa-seq)
            (hsPkgs.alsa-core)
            (hsPkgs.base)
            ];
          };
        "alsa-midi-controller" = {
          depends = [
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.alsa-seq)
            (hsPkgs.alsa-core)
            (hsPkgs.base)
            ];
          };
        };
      };
    }