{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      gui = true;
      mplayer = true;
      httpserver = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "live-sequencer";
        version = "0.0.6";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>, Johannes Waldmann <waldmann@imn.htwk-leipzig.de>";
      author = "Henning Thielemann and Johannes Waldmann";
      homepage = "http://www.haskell.org/haskellwiki/Live-Sequencer";
      url = "";
      synopsis = "Live coding of MIDI music";
      description = "An editor shows a textual description of music (like Haskore),\nan interpreter computes and emits a stream of MIDI events,\nand (that's the main point) the user can change the program on the fly.\nAdditionally the state of the interpreter is shown\nin the form of the current reduced term\nfor educational and debugging purposes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.non-negative)
          (hsPkgs.event-list)
          (hsPkgs.base)
        ];
      };
      exes = {
        "live-sequencer" = {
          depends = [
            (hsPkgs.stm-split)
            (hsPkgs.concurrent-split)
            (hsPkgs.transformers)
            (hsPkgs.explicit-exception)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.midi-alsa)
            (hsPkgs.midi)
            (hsPkgs.alsa-seq)
            (hsPkgs.alsa-core)
            (hsPkgs.data-accessor-transformers)
            (hsPkgs.data-accessor)
            (hsPkgs.strict)
            (hsPkgs.utility-ht)
            (hsPkgs.non-empty)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base)
          ];
        };
        "live-sequencer-gui" = {
          depends = pkgs.lib.optionals (flags.gui) [
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.stm)
            (hsPkgs.concurrent-split)
            (hsPkgs.transformers)
            (hsPkgs.explicit-exception)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.midi-alsa)
            (hsPkgs.midi)
            (hsPkgs.alsa-seq)
            (hsPkgs.alsa-core)
            (hsPkgs.data-accessor-transformers)
            (hsPkgs.data-accessor)
            (hsPkgs.strict)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base)
          ] ++ pkgs.lib.optionals (flags.httpserver) [
            (hsPkgs.httpd-shed)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.cgi)
            (hsPkgs.html)
          ];
        };
        "live-mplayer-control" = {
          depends = pkgs.lib.optionals (flags.mplayer) [
            (hsPkgs.midi-alsa)
            (hsPkgs.midi)
            (hsPkgs.alsa-seq)
            (hsPkgs.alsa-core)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.base)
          ];
        };
      };
    };
  }