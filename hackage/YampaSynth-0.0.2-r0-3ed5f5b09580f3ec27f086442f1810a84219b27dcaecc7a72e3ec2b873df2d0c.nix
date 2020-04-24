{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { wav = true; openal = true; gtk = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "YampaSynth"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 George Giorgidze and Henrik Nilsson";
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            (hsPkgs."HCodecs" or ((hsPkgs.pkgs-errors).buildDepError "HCodecs"))
            ];
          buildable = if flags.wav then true else false;
          };
        "yampasynth-openal" = {
          depends = (pkgs.lib).optionals (flags.openal) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."OpenAL" or ((hsPkgs.pkgs-errors).buildDepError "OpenAL"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            (hsPkgs."HCodecs" or ((hsPkgs.pkgs-errors).buildDepError "HCodecs"))
            ];
          buildable = if flags.openal then true else false;
          };
        "yampasynth-gtk" = {
          depends = (pkgs.lib).optionals (flags.gtk) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."OpenAL" or ((hsPkgs.pkgs-errors).buildDepError "OpenAL"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."Yampa" or ((hsPkgs.pkgs-errors).buildDepError "Yampa"))
            (hsPkgs."HCodecs" or ((hsPkgs.pkgs-errors).buildDepError "HCodecs"))
            ];
          buildable = if flags.gtk then true else false;
          };
        };
      };
    }