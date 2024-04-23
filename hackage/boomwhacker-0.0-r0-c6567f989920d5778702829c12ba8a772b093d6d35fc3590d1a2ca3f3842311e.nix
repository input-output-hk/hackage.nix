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
      identifier = { name = "boomwhacker"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/boomwhacker";
      url = "";
      synopsis = "Convert MIDI file to play-along boomwhacker animation";
      description = "Convert MIDI file to play-along boomwhacker animation:\n\nRun it like so:\n\n> boomwhacker song.mid song.pdf\n\n@song.mid@ is the input file that must be a MIDI file.\n@song.pdf@ is the output file, a PDF file.\nYou can convert the PDF to a series of PNG files using @ghostscript@\nand this one to a video using @ffmpeg@.\nSee @Makefile@ for example command calls.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "boomwhacker" = {
          depends = [
            (hsPkgs."HPDF" or (errorHandler.buildDepError "HPDF"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }