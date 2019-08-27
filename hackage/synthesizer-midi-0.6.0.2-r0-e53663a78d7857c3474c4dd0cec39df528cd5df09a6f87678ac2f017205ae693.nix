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
    flags = { splitbase = true; buildexamples = false; buildtests = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "synthesizer-midi"; version = "0.6.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Render audio signals from MIDI files or realtime messages";
      description = "This package allows to read MIDI events\nand to convert them to audio and control signals.\nIncluded is a basic synthesizer that renders MIDI to WAV\n(or other audio signal formats supported by SoX).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."synthesizer-dimensional" or (buildDepError "synthesizer-dimensional"))
          (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
          (hsPkgs."sox" or (buildDepError "sox"))
          (hsPkgs."midi" or (buildDepError "midi"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."storablevector" or (buildDepError "storablevector"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."event-list" or (buildDepError "event-list"))
          (hsPkgs."data-accessor-transformers" or (buildDepError "data-accessor-transformers"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        };
      exes = {
        "render-midi" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-midi" or (buildDepError "synthesizer-midi"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."sox" or (buildDepError "sox"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."non-negative" or (buildDepError "non-negative"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "test" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."synthesizer-midi" or (buildDepError "synthesizer-midi"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }