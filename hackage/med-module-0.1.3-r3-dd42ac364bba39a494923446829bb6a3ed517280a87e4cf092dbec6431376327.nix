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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "med-module"; version = "0.1.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Claude Heiland-Allen, Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Parse song module files from Amiga MED and OctaMED";
      description = "MED (Music EDitor) and its successor OctaMED\nwere popular music trackers on the Amiga:\n<https://en.wikipedia.org/wiki/OctaMED>.\nThis is a library for parsing the binary module data.\n\nWith the Cabal flag @-fbuildExamples@ you can build two example programs:\n\n* @unmed2@:\nLoads song module files and show their content on standard output.\n\n* @animed@:\nCreate a PostScript document showing how a song is played.\nAlso creates an FFmpeg cue file for the @concat@ input type.\nThis way you can create videos with MED music\nplus precisely timed animations of the played tracks.\nSee the included @Makefile@ for the command calls\nfor creation of complete music videos from MMD files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."storable-endian" or (errorHandler.buildDepError "storable-endian"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "unmed2" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."med-module" or (errorHandler.buildDepError "med-module"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "animed" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."med-module" or (errorHandler.buildDepError "med-module"))
            (hsPkgs."HPDF" or (errorHandler.buildDepError "HPDF"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
    };
  }