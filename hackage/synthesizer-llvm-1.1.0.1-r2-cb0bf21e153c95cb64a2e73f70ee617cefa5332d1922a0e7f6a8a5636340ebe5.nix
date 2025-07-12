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
    flags = { buildexamples = false; alsa = true; jack = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "synthesizer-llvm"; version = "1.1.0.1"; };
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
          (hsPkgs."llvm-dsl" or (errorHandler.buildDepError "llvm-dsl"))
          (hsPkgs."llvm-extra" or (errorHandler.buildDepError "llvm-extra"))
          (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
          (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
          (hsPkgs."synthesizer-midi" or (errorHandler.buildDepError "synthesizer-midi"))
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
          (hsPkgs."unsafe" or (errorHandler.buildDepError "unsafe"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      sublibs = {
        "server" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-llvm" or (errorHandler.buildDepError "synthesizer-llvm"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or (errorHandler.buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
      exes = {
        "synthi-llvm-example" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-llvm".components.sublibs.server or (errorHandler.buildDepError "synthesizer-llvm:server"))
            (hsPkgs."synthesizer-llvm" or (errorHandler.buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-dsl" or (errorHandler.buildDepError "llvm-dsl"))
            (hsPkgs."llvm-extra" or (errorHandler.buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."unsafe" or (errorHandler.buildDepError "unsafe"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "synthi-llvm-lndw" = {
          depends = pkgs.lib.optionals (flags.buildexamples && flags.alsa) [
            (hsPkgs."synthesizer-llvm" or (errorHandler.buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-dsl" or (errorHandler.buildDepError "llvm-dsl"))
            (hsPkgs."llvm-extra" or (errorHandler.buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or (errorHandler.buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."synthesizer-alsa" or (errorHandler.buildDepError "synthesizer-alsa"))
            (hsPkgs."alsa-pcm" or (errorHandler.buildDepError "alsa-pcm"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples && flags.alsa then true else false;
        };
        "synthi-llvm-alsa" = {
          depends = pkgs.lib.optionals (flags.buildexamples && flags.alsa) [
            (hsPkgs."synthesizer-llvm".components.sublibs.server or (errorHandler.buildDepError "synthesizer-llvm:server"))
            (hsPkgs."synthesizer-llvm" or (errorHandler.buildDepError "synthesizer-llvm"))
            (hsPkgs."unsafe" or (errorHandler.buildDepError "unsafe"))
            (hsPkgs."llvm-dsl" or (errorHandler.buildDepError "llvm-dsl"))
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or (errorHandler.buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."synthesizer-alsa" or (errorHandler.buildDepError "synthesizer-alsa"))
            (hsPkgs."midi-alsa" or (errorHandler.buildDepError "midi-alsa"))
            (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
            (hsPkgs."alsa-pcm" or (errorHandler.buildDepError "alsa-pcm"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples && flags.alsa then true else false;
        };
        "synthi-llvm-jack" = {
          depends = pkgs.lib.optionals (flags.buildexamples && flags.jack) [
            (hsPkgs."synthesizer-llvm".components.sublibs.server or (errorHandler.buildDepError "synthesizer-llvm:server"))
            (hsPkgs."synthesizer-llvm" or (errorHandler.buildDepError "synthesizer-llvm"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."jack" or (errorHandler.buildDepError "jack"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or (errorHandler.buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples && flags.jack then true else false;
        };
        "synthi-llvm-render" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-llvm".components.sublibs.server or (errorHandler.buildDepError "synthesizer-llvm:server"))
            (hsPkgs."synthesizer-llvm" or (errorHandler.buildDepError "synthesizer-llvm"))
            (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "synthi-llvm-sample" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."synthesizer-llvm".components.sublibs.server or (errorHandler.buildDepError "synthesizer-llvm:server"))
            (hsPkgs."synthesizer-llvm" or (errorHandler.buildDepError "synthesizer-llvm"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "synthi-llvm-speech" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
            (hsPkgs."llvm-dsl" or (errorHandler.buildDepError "llvm-dsl"))
            (hsPkgs."synthesizer-llvm" or (errorHandler.buildDepError "synthesizer-llvm"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
      tests = {
        "synthi-llvm-test" = {
          depends = [
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."synthesizer-llvm" or (errorHandler.buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-dsl" or (errorHandler.buildDepError "llvm-dsl"))
            (hsPkgs."llvm-extra" or (errorHandler.buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."unsafe" or (errorHandler.buildDepError "unsafe"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }