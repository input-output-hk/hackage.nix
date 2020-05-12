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
      specVersion = "1.6";
      identifier = { name = "fullstop"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Kow <E.Y.Kow@brighton.ac.uk>";
      author = "Eric Kow";
      homepage = "http://patch-tag.com/r/kowey/fullstop";
      url = "";
      synopsis = "Simple sentence segmenter";
      description = "FullStop splits texts into sentences, using some orthographical\nconventions (used in English and hopefully other languages).\n\nIt recognises certain punctuation characters as sentence\ndelimiters (@.?!@) and handles some abbreviations such as\n@Mr.@ and decimal numbers (eg. @4.2@).\n\nNote that this package is mostly a placeholder.  I hope\nthe Haskell/NLP communities will run with it and upload\na more sophisticated (family of) segmenter(s) in its\nplace.  Patches (and new maintainers) would be greeted\nwith delight!";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "fullstop" = { buildable = true; };
        "hstest-fullstop" = { buildable = true; };
        };
      };
    }