let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gui = true; mplayer = true; httpserver = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "live-sequencer"; version = "0.0.6"; };
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
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."event-list" or (buildDepError "event-list"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      exes = {
        "live-sequencer" = {
          depends = [
            (hsPkgs."stm-split" or (buildDepError "stm-split"))
            (hsPkgs."concurrent-split" or (buildDepError "concurrent-split"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."midi-alsa" or (buildDepError "midi-alsa"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."alsa-seq" or (buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."data-accessor-transformers" or (buildDepError "data-accessor-transformers"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "live-sequencer-gui" = {
          depends = (pkgs.lib).optionals (flags.gui) [
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."wxcore" or (buildDepError "wxcore"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."concurrent-split" or (buildDepError "concurrent-split"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."midi-alsa" or (buildDepError "midi-alsa"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."alsa-seq" or (buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."data-accessor-transformers" or (buildDepError "data-accessor-transformers"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (pkgs.lib).optionals (flags.httpserver) [
            (hsPkgs."httpd-shed" or (buildDepError "httpd-shed"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."html" or (buildDepError "html"))
            ];
          };
        "live-mplayer-control" = {
          depends = (pkgs.lib).optionals (flags.mplayer) [
            (hsPkgs."midi-alsa" or (buildDepError "midi-alsa"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."alsa-seq" or (buildDepError "alsa-seq"))
            (hsPkgs."alsa-core" or (buildDepError "alsa-core"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }