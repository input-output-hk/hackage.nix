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
      specVersion = "1.2";
      identifier = { name = "thimk"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2010 Bart Massey";
      maintainer = "bart@cs.pdx.edu";
      author = "Bart Massey";
      homepage = "http://wiki.cs.pdx.edu/bartforge/thimk";
      url = "http://wiki.cs.pdx.edu/cabal-packages/thimk-0.3.tar.gz";
      synopsis = "Command-line spelling word suggestion tool";
      description = "\"thimk\" (an old joke) is a command-line spelling word\nsuggestion tool.  You give it a possibly-misspelled word,\nand it spits out one or more properly-spelled words in order\nof likelihood of similarity.\n\nThe latest change to the implementation is an addition\nof an optional precompiled SQlite database of phonetic\ncodes for the entire dictionary, created with\n\"thimk-makedb\".  This greatly speeds lookup, permitting\nreasonable performance on enormous dictionaries.";
      buildType = "Simple";
    };
    components = {
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
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            (hsPkgs."sqlite" or (errorHandler.buildDepError "sqlite"))
            (hsPkgs."phonetic-code" or (errorHandler.buildDepError "phonetic-code"))
          ];
          buildable = true;
        };
      };
    };
  }