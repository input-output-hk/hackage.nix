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
      identifier = { name = "instrument-chord"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "w@xy30.com";
      author = "Alan Hawkins";
      homepage = "https://github.com/xpika/chord";
      url = "";
      synopsis = "Render Instrument Chords";
      description = "Library which Pretty Prints Guitar Chords";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."music-diatonic" or (errorHandler.buildDepError "music-diatonic"))
          ];
        buildable = true;
        };
      };
    }