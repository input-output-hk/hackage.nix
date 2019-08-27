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
    flags = { buildexamples = false; alsa = true; jack = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "synthesizer-llvm"; version = "0.8.1.1"; };
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
          (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
          (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
          (hsPkgs."tfp" or (buildDepError "tfp"))
          (hsPkgs."vault" or (buildDepError "vault"))
          (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
          (hsPkgs."synthesizer-midi" or (buildDepError "synthesizer-midi"))
          (hsPkgs."midi" or (buildDepError "midi"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
          (hsPkgs."sox" or (buildDepError "sox"))
          (hsPkgs."storablevector" or (buildDepError "storablevector"))
          (hsPkgs."unsafe" or (buildDepError "unsafe"))
          (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."non-empty" or (buildDepError "non-empty"))
          (hsPkgs."event-list" or (buildDepError "event-list"))
          (hsPkgs."pathtype" or (buildDepError "pathtype"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      exes = {
        "synthi-llvm-example" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-llvm" or (buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or (buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."storable-record" or (buildDepError "storable-record"))
            (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
            (hsPkgs."sox" or (buildDepError "sox"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or (buildDepError "non-negative"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."pathtype" or (buildDepError "pathtype"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "synthi-llvm-lndw" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.alsa) [
            (hsPkgs."synthesizer-llvm" or (buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or (buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."storable-record" or (buildDepError "storable-record"))
            (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
            (hsPkgs."sox" or (buildDepError "sox"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or (buildDepError "non-negative"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."pathtype" or (buildDepError "pathtype"))
            (hsPkgs."synthesizer-alsa" or (buildDepError "synthesizer-alsa"))
            (hsPkgs."alsa-pcm" or (buildDepError "alsa-pcm"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "synthi-llvm-alsa" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.alsa) [
            (hsPkgs."synthesizer-llvm" or (buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or (buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."storable-record" or (buildDepError "storable-record"))
            (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or (buildDepError "non-negative"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."pathtype" or (buildDepError "pathtype"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."synthesizer-alsa" or (buildDepError "synthesizer-alsa"))
            (hsPkgs."midi-alsa" or (buildDepError "midi-alsa"))
            (hsPkgs."alsa-seq" or (buildDepError "alsa-seq"))
            (hsPkgs."alsa-pcm" or (buildDepError "alsa-pcm"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "synthi-llvm-jack" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.jack) [
            (hsPkgs."synthesizer-llvm" or (buildDepError "synthesizer-llvm"))
            (hsPkgs."jack" or (buildDepError "jack"))
            (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or (buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."storable-record" or (buildDepError "storable-record"))
            (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or (buildDepError "non-negative"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."pathtype" or (buildDepError "pathtype"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "synthi-llvm-render" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-llvm" or (buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."sox" or (buildDepError "sox"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."synthesizer-midi" or (buildDepError "synthesizer-midi"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."storable-record" or (buildDepError "storable-record"))
            (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."non-negative" or (buildDepError "non-negative"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."pathtype" or (buildDepError "pathtype"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "synthi-llvm-sample" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."gnuplot" or (buildDepError "gnuplot"))
            (hsPkgs."synthesizer-llvm" or (buildDepError "synthesizer-llvm"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."pathtype" or (buildDepError "pathtype"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "synthi-llvm-speech" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."gnuplot" or (buildDepError "gnuplot"))
            (hsPkgs."pathtype" or (buildDepError "pathtype"))
            (hsPkgs."sox" or (buildDepError "sox"))
            (hsPkgs."synthesizer-llvm" or (buildDepError "synthesizer-llvm"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      tests = {
        "synthi-llvm-test" = {
          depends = [
            (hsPkgs."synthesizer-llvm" or (buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (buildDepError "tfp"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }