{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; alsa = true; jack = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "synthesizer-llvm"; version = "0.8.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "http://code.haskell.org/synthesizer/llvm/";
      synopsis = "Efficient signal processing using runtime compilation";
      description = "Efficient signal processing\nusing runtime compilation and vector instructions.\nIt uses LLVM library, thus it is not bound to a specific CPU.\nThere are some example executables that you can build\nwith Cabal flag @buildExamples@:\n\n* @synthi-llvm-render@:\nRender a MIDI file into an audio file\nusing some arbitrary instruments.\n\n* @synthi-llvm-alsa@:\nA realtime software synthesizer\nthat receives MIDI events via ALSA\nand in response plays tones via ALSA.\nIf you have no ALSA (or Linux at all),\nthen you can disable this example with @-f-alsa@.\n\n* @synthi-llvm-jack@:\nThe same realtime software synthesizer using JACK.\nIf you have no JACK,\nthen you can disable this example with @-f-jack@.\n\n* @synthi-llvm-example@:\nNot very useful as an executable.\nYou should better load the according module into GHCi\nand play around with it.\nThe module Synthesizer.LLVM.LAC2011\nshould be especially useful for an introduction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."llvm-extra" or ((hsPkgs.pkgs-errors).buildDepError "llvm-extra"))
          (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
          (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
          (hsPkgs."vault" or ((hsPkgs.pkgs-errors).buildDepError "vault"))
          (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
          (hsPkgs."synthesizer-midi" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-midi"))
          (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
          (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
          (hsPkgs."storable-tuple" or ((hsPkgs.pkgs-errors).buildDepError "storable-tuple"))
          (hsPkgs."sox" or ((hsPkgs.pkgs-errors).buildDepError "sox"))
          (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
          (hsPkgs."unsafe" or ((hsPkgs.pkgs-errors).buildDepError "unsafe"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      sublibs = {
        "synthesizer-llvm-server" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-llvm" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."shell-utility" or ((hsPkgs.pkgs-errors).buildDepError "shell-utility"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      exes = {
        "synthi-llvm-example" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-llvm-server" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm-server"))
            (hsPkgs."synthesizer-llvm" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-extra" or ((hsPkgs.pkgs-errors).buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."sox" or ((hsPkgs.pkgs-errors).buildDepError "sox"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "synthi-llvm-lndw" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.alsa) [
            (hsPkgs."synthesizer-llvm" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-extra" or ((hsPkgs.pkgs-errors).buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
            (hsPkgs."storable-tuple" or ((hsPkgs.pkgs-errors).buildDepError "storable-tuple"))
            (hsPkgs."sox" or ((hsPkgs.pkgs-errors).buildDepError "sox"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."synthesizer-alsa" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-alsa"))
            (hsPkgs."alsa-pcm" or ((hsPkgs.pkgs-errors).buildDepError "alsa-pcm"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples && flags.alsa then true else false;
          };
        "synthi-llvm-alsa" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.alsa) [
            (hsPkgs."synthesizer-llvm-server" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm-server"))
            (hsPkgs."synthesizer-llvm" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."synthesizer-alsa" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-alsa"))
            (hsPkgs."midi-alsa" or ((hsPkgs.pkgs-errors).buildDepError "midi-alsa"))
            (hsPkgs."alsa-seq" or ((hsPkgs.pkgs-errors).buildDepError "alsa-seq"))
            (hsPkgs."alsa-pcm" or ((hsPkgs.pkgs-errors).buildDepError "alsa-pcm"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples && flags.alsa then true else false;
          };
        "synthi-llvm-jack" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.jack) [
            (hsPkgs."synthesizer-llvm-server" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm-server"))
            (hsPkgs."synthesizer-llvm" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm"))
            (hsPkgs."jack" or ((hsPkgs.pkgs-errors).buildDepError "jack"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples && flags.jack then true else false;
          };
        "synthi-llvm-render" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-llvm-server" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm-server"))
            (hsPkgs."synthesizer-llvm" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm"))
            (hsPkgs."sox" or ((hsPkgs.pkgs-errors).buildDepError "sox"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."shell-utility" or ((hsPkgs.pkgs-errors).buildDepError "shell-utility"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "synthi-llvm-sample" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."gnuplot" or ((hsPkgs.pkgs-errors).buildDepError "gnuplot"))
            (hsPkgs."synthesizer-llvm-server" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm-server"))
            (hsPkgs."synthesizer-llvm" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "synthi-llvm-speech" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."gnuplot" or ((hsPkgs.pkgs-errors).buildDepError "gnuplot"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."sox" or ((hsPkgs.pkgs-errors).buildDepError "sox"))
            (hsPkgs."synthesizer-llvm" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      tests = {
        "synthi-llvm-test" = {
          depends = [
            (hsPkgs."synthesizer-llvm" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-extra" or ((hsPkgs.pkgs-errors).buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }