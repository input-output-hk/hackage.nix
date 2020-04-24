{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "live-sequencer" = {
          depends = [
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."midi-alsa" or ((hsPkgs.pkgs-errors).buildDepError "midi-alsa"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."data-accessor-transformers" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-transformers"))
            (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "live-sequencer-gui" = {
          depends = [
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."midi-alsa" or ((hsPkgs.pkgs-errors).buildDepError "midi-alsa"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."data-accessor-transformers" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-transformers"))
            (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ] ++ (pkgs.lib).optionals (flags.httpserver) [
            (hsPkgs."httpd-shed" or ((hsPkgs.pkgs-errors).buildDepError "httpd-shed"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
            ];
          buildable = true;
          };
        };
      };
    }