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
      identifier = { name = "tttool"; version = "1.8.1"; };
      license = "MIT";
      copyright = "2013-2019 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/entropia/tip-toi-reveng";
      url = "";
      synopsis = "Working with files for the Tiptoi® pen";
      description = "The Ravensburger Tiptoi® pen is programmed via special\nfiles. Their file format has been reverse engineered; this\nis a tool to analyse and create such files.\n\nFor more user-facing documentation, see\n<http://tttool.entropia.de/> (in German).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tttool" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."HPDF" or (errorHandler.buildDepError "HPDF"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."natural-sort" or (errorHandler.buildDepError "natural-sort"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."spool" or (errorHandler.buildDepError "spool"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      };
    }