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
      specVersion = "1.10";
      identifier = { name = "midi-util"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "http://github.com/mtolly/midi-util";
      url = "";
      synopsis = "Utility functions for processing MIDI files";
      description = "Common high-level tasks when processing MIDI files.\n\n* Use tempos to translate between musical time (beats) and real time (seconds).\n\n* Use time signatures to reference positions using measures instead of just beats.\n\n* Find or change the names of MIDI tracks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }