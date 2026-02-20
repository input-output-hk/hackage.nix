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
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "gb-synth"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "gondola.bros.entertainment@gmail.com";
      author = "Gondola Bros Entertainment";
      homepage = "https://github.com/Gondola-Bros-Entertainment/gb-synth";
      url = "";
      synopsis = "Procedural music sequencer for GB games";
      description = "A synthesis engine with tracker-style song DSL for generating\nretro game music and sound effects. Pure Haskell — no audio files,\nno samples, no DAW. Just math.\n\nDefine songs declaratively with chords, patterns, sections, and\ninstruments. Render to 16-bit mono PCM WAV at 22050 Hz.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "gb-synth-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."gb-synth" or (errorHandler.buildDepError "gb-synth"))
          ];
          buildable = true;
        };
      };
    };
  }