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
    flags = { gui = true; mplayer = true; httpserver = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "live-sequencer"; version = "0.0.6.1"; };
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
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "live-sequencer" = {
          depends = [
            (hsPkgs."stm-split" or (errorHandler.buildDepError "stm-split"))
            (hsPkgs."concurrent-split" or (errorHandler.buildDepError "concurrent-split"))
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
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "live-sequencer-gui" = {
          depends = (pkgs.lib).optionals (flags.gui) [
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."concurrent-split" or (errorHandler.buildDepError "concurrent-split"))
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
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (pkgs.lib).optionals (flags.httpserver) [
            (hsPkgs."httpd-shed" or (errorHandler.buildDepError "httpd-shed"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            ];
          buildable = if flags.gui then true else false;
          };
        "live-mplayer-control" = {
          depends = (pkgs.lib).optionals (flags.mplayer) [
            (hsPkgs."midi-alsa" or (errorHandler.buildDepError "midi-alsa"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.mplayer then true else false;
          };
        };
      };
    }