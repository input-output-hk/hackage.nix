{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      httpserver = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "live-sequencer";
        version = "0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann <waldmann@imn.htwk-leipzig.de>, Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann and Johannes Waldmann";
      homepage = "";
      url = "";
      synopsis = "Live coding of MIDI music";
      description = "An editor shows a textual description of music (like Haskore),\nan interpreter computes and emits a stream of MIDI events,\nand (that's the main point) the user can change the program on the fly.\n\n1. example usage *****\n\n@\ntimidity -iA &\n./live-sequencer-gui --connect-to TiMidity Stream &\n@\n\nthis should give you an ongoing stream\nof notes\n\nthen change one of the numbers\nthat appear in the lines like\n@mid = note 300 (c 4)@\n\nand press CTRL-R for \\\"reloading\\\" that module into the interpreter\nthis should immediately have an effect\n(change pitch and duration of some of the notes)\n\n2. input language *****\n\nlanguage is Haskell with\nonly strict pattern matching and\npattern matching only at the definition level (no case),\nno local bindings (no lambda, let, where),\nno types (no type inference, type signatures and type declarations are skipped)\n\nsemantics is similar to lazy evaluation,\nbut we have no sharing,\nthe value of @main@ is a stream of midi events\n(@On/Off pitch velocity@)\nor (@Wait milliseconds@)\n\nin each step, the head of the stream gets reduced\nto head normal form (with @:@ at the top),\nand the first arg of the @:@ gets fully expanded\nand it must be a midi event.\n\nIn the library interface we provide the basic Live-Sequencer modules\nin order to allow offline rendering of Live-Sequencer music.";
      buildType = "Simple";
    };
    components = {
      "live-sequencer" = {
        depends  = [
          (hsPkgs.non-negative)
          (hsPkgs.event-list)
          (hsPkgs.base)
        ];
      };
      exes = {
        "live-sequencer" = {
          depends  = [
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
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base)
          ];
        };
        "live-sequencer-gui" = {
          depends  = [
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.stm)
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
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base)
          ] ++ pkgs.lib.optionals (_flags.httpserver) [
            (hsPkgs.httpd-shed)
            (hsPkgs.network)
            (hsPkgs.cgi)
            (hsPkgs.html)
          ];
        };
      };
    };
  }