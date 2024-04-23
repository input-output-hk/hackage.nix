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
      specVersion = "1.4";
      identifier = { name = "tidal-midi"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) Alex McLean and other contributors, 2015";
      maintainer = "Alex McLean <alex@slab.org>, Mike Hodnick <mike.hodnick@gmail.com>";
      author = "Alex McLean";
      homepage = "http://tidal.lurk.org/";
      url = "";
      synopsis = "MIDI support for tidal";
      description = "Initial MIDI support for Tidal. Currently only supports Volca Keys synth, and the interface is likely to change significantly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tidal" or (errorHandler.buildDepError "tidal"))
          (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
          (hsPkgs."alsa-seq" or (errorHandler.buildDepError "alsa-seq"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
        ];
        buildable = true;
      };
    };
  }