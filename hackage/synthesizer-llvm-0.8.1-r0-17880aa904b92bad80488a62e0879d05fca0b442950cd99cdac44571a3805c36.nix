{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; alsa = true; jack = true; };
    package = {
      specVersion = "1.14";
      identifier = { name = "synthesizer-llvm"; version = "0.8.1"; };
      license = "LicenseRef-GPL";
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
          (hsPkgs.llvm-extra)
          (hsPkgs.llvm-tf)
          (hsPkgs.tfp)
          (hsPkgs.vault)
          (hsPkgs.synthesizer-core)
          (hsPkgs.synthesizer-midi)
          (hsPkgs.midi)
          (hsPkgs.storable-record)
          (hsPkgs.storable-tuple)
          (hsPkgs.sox)
          (hsPkgs.storablevector)
          (hsPkgs.unsafe)
          (hsPkgs.numeric-prelude)
          (hsPkgs.non-negative)
          (hsPkgs.non-empty)
          (hsPkgs.event-list)
          (hsPkgs.pathtype)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
          ];
        };
      exes = {
        "synthi-llvm-example" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.synthesizer-llvm)
            (hsPkgs.llvm-extra)
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.synthesizer-core)
            (hsPkgs.synthesizer-midi)
            (hsPkgs.midi)
            (hsPkgs.storable-record)
            (hsPkgs.storable-tuple)
            (hsPkgs.sox)
            (hsPkgs.storablevector)
            (hsPkgs.numeric-prelude)
            (hsPkgs.non-negative)
            (hsPkgs.event-list)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.pathtype)
            (hsPkgs.base)
            ];
          };
        "synthi-llvm-lndw" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.alsa) [
            (hsPkgs.synthesizer-llvm)
            (hsPkgs.llvm-extra)
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.synthesizer-core)
            (hsPkgs.synthesizer-midi)
            (hsPkgs.midi)
            (hsPkgs.storable-record)
            (hsPkgs.storable-tuple)
            (hsPkgs.sox)
            (hsPkgs.storablevector)
            (hsPkgs.numeric-prelude)
            (hsPkgs.non-negative)
            (hsPkgs.event-list)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.pathtype)
            (hsPkgs.synthesizer-alsa)
            (hsPkgs.alsa-pcm)
            (hsPkgs.base)
            ];
          };
        "synthi-llvm-alsa" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.alsa) [
            (hsPkgs.synthesizer-llvm)
            (hsPkgs.llvm-extra)
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.synthesizer-core)
            (hsPkgs.synthesizer-midi)
            (hsPkgs.midi)
            (hsPkgs.storable-record)
            (hsPkgs.storable-tuple)
            (hsPkgs.storablevector)
            (hsPkgs.numeric-prelude)
            (hsPkgs.non-negative)
            (hsPkgs.event-list)
            (hsPkgs.pathtype)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.utility-ht)
            (hsPkgs.synthesizer-alsa)
            (hsPkgs.midi-alsa)
            (hsPkgs.alsa-seq)
            (hsPkgs.alsa-pcm)
            (hsPkgs.base)
            ];
          };
        "synthi-llvm-jack" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.jack) [
            (hsPkgs.synthesizer-llvm)
            (hsPkgs.jack)
            (hsPkgs.llvm-extra)
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.synthesizer-core)
            (hsPkgs.synthesizer-midi)
            (hsPkgs.midi)
            (hsPkgs.storable-record)
            (hsPkgs.storable-tuple)
            (hsPkgs.storablevector)
            (hsPkgs.numeric-prelude)
            (hsPkgs.non-negative)
            (hsPkgs.random)
            (hsPkgs.explicit-exception)
            (hsPkgs.event-list)
            (hsPkgs.pathtype)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        "synthi-llvm-render" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.synthesizer-llvm)
            (hsPkgs.llvm-extra)
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.sox)
            (hsPkgs.synthesizer-core)
            (hsPkgs.synthesizer-midi)
            (hsPkgs.midi)
            (hsPkgs.storable-record)
            (hsPkgs.storable-tuple)
            (hsPkgs.storablevector)
            (hsPkgs.numeric-prelude)
            (hsPkgs.non-negative)
            (hsPkgs.explicit-exception)
            (hsPkgs.event-list)
            (hsPkgs.pathtype)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        "synthi-llvm-sample" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.gnuplot)
            (hsPkgs.synthesizer-llvm)
            (hsPkgs.synthesizer-core)
            (hsPkgs.midi)
            (hsPkgs.numeric-prelude)
            (hsPkgs.storablevector)
            (hsPkgs.pathtype)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        "synthi-llvm-speech" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs.gnuplot)
            (hsPkgs.pathtype)
            (hsPkgs.sox)
            (hsPkgs.synthesizer-llvm)
            (hsPkgs.synthesizer-core)
            (hsPkgs.numeric-prelude)
            (hsPkgs.storablevector)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        };
      tests = {
        "synthi-llvm-test" = {
          depends = [
            (hsPkgs.synthesizer-llvm)
            (hsPkgs.llvm-extra)
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.synthesizer-core)
            (hsPkgs.storablevector)
            (hsPkgs.numeric-prelude)
            (hsPkgs.random)
            (hsPkgs.utility-ht)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            ];
          };
        };
      };
    }