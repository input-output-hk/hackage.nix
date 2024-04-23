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
    flags = { debug = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "spelling-suggest"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2010 Greg Weber and Bart Massey";
      maintainer = "bart@cs.pdx.edu, greg@gregweber.info";
      author = "Greg Weber and Bart Massey";
      homepage = "https://github.com/BartMassey/haskell-spell-suggest";
      url = "";
      synopsis = "Spelling suggestion tool with library and command-line interfaces.";
      description = "\"thimk\" (an old joke) is a command-line spelling word\nsuggestion tool. You give it a possibly-misspelled word,\nand it spits out one or more properly-spelled words in order\nof likelihood of similarity.\n\nThis functionality is also exported as a library via\nText.SpellingSuggest (suggest)\n\nThere is an optional precompiled SQlite database of phonetic\ncodes for the entire dictionary, created with\n\"thimk-makedb\".  This greatly speeds lookup, permitting\nreasonable performance on enormous dictionaries.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          (hsPkgs."phonetic-code" or (errorHandler.buildDepError "phonetic-code"))
          (hsPkgs."sqlite" or (errorHandler.buildDepError "sqlite"))
        ];
        buildable = true;
      };
      exes = {
        "thimk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
            (hsPkgs."phonetic-code" or (errorHandler.buildDepError "phonetic-code"))
            (hsPkgs."sqlite" or (errorHandler.buildDepError "sqlite"))
          ];
          buildable = true;
        };
        "thimk-makedb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            (hsPkgs."phonetic-code" or (errorHandler.buildDepError "phonetic-code"))
            (hsPkgs."sqlite" or (errorHandler.buildDepError "sqlite"))
          ];
          buildable = true;
        };
      };
    };
  }