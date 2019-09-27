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
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."event-list" or (buildDepError "event-list"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "live-sequencer" = {
          depends = [
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
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "live-sequencer-gui" = {
          depends = [
            (hsPkgs."wx" or (buildDepError "wx"))
            (hsPkgs."wxcore" or (buildDepError "wxcore"))
            (hsPkgs."stm" or (buildDepError "stm"))
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
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (pkgs.lib).optionals (flags.httpserver) [
            (hsPkgs."httpd-shed" or (buildDepError "httpd-shed"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."html" or (buildDepError "html"))
            ];
          buildable = true;
          };
        };
      };
    }