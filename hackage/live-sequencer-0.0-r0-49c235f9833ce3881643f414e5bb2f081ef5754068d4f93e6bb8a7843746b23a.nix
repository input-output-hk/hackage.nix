{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { httpserver = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "live-sequencer"; version = "0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      exes = {
        "live-sequencer" = {
          depends = [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."midi-alsa" or (errorHandler.buildDepError "midi-alsa"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
            (hsPkgs."data-accessor-transformers" or (errorHandler.buildDepError "data-accessor-transformers"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "live-sequencer-gui" = {
          depends = [
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."midi-alsa" or (errorHandler.buildDepError "midi-alsa"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
            (hsPkgs."data-accessor-transformers" or (errorHandler.buildDepError "data-accessor-transformers"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.httpserver) [
            (hsPkgs."httpd-shed" or (errorHandler.buildDepError "httpd-shed"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
          ];
          buildable = true;
        };
      };
    };
  }