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
    flags = { wav = true; openal = true; gtk = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "YampaSynth"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2010 George Giorgidze and Henrik Nilsson";
      maintainer = "George Giorgidze (GGG at CS dot NOTT dot AC dot UK)";
      author = "George Giorgidze and Henrik Nilsson";
      homepage = "http://www.cs.nott.ac.uk/~ggg/";
      url = "";
      synopsis = "Software synthesizer";
      description = "YampaSynth is a software synthesizer implemented in Yampa, domain specific language embedded in Haskell. It contains a little framework of sound generating and sound shaping modules (e.g. oscillator, amplifier, mixer, envelope generator, filter, etc.) and example applications:\n\n* \"yampasynth-wav\" is an application which synthesizes a MIDI music and writes result into a WAVE audio file.\n\n* \"yampasynth-openal\" is an application which synthesizes a MIDI music and sends audio data in real-time to a sound card. We use Haskell binding of OpenAL library as an interface to audio hardware.\n\n* \"yampasynth-gtk\" is an application with the simple graphical user interface which allows you to play a music with various instruments in real-time using the keyboard of your computer. We use Haskell binding of GTK library for GUI programming and Haskell binding of OpenAL library as an interface to audio hardware.\n\nSoftware synthesizer uses the MIDI standard as a music description and the SoundFont standard as an instrument description.\n\nImplementation is based on the paper \"Switched-on Yampa: Declarative Programming of Modular Synthesizers\", by George Giorgidze and Henrik Nilsson (<http://www.cs.nott.ac.uk/~ggg/publications/padl2008.pdf>), In Proceedings of 10th International Symposium on Practical Aspects of Declarative Languages, San Francisco, CA, USA, January 7-8, 2008.\n\nThis is mainly a proof of concept, but already useful to some extent.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yampasynth-wav" = {
          depends = (pkgs.lib).optionals (flags.wav) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            (hsPkgs."HCodecs" or (buildDepError "HCodecs"))
            ];
          };
        "yampasynth-openal" = {
          depends = (pkgs.lib).optionals (flags.openal) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."OpenAL" or (buildDepError "OpenAL"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            (hsPkgs."HCodecs" or (buildDepError "HCodecs"))
            ];
          };
        "yampasynth-gtk" = {
          depends = (pkgs.lib).optionals (flags.gtk) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."OpenAL" or (buildDepError "OpenAL"))
            (hsPkgs."glade" or (buildDepError "glade"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            (hsPkgs."HCodecs" or (buildDepError "HCodecs"))
            ];
          };
        };
      };
    }