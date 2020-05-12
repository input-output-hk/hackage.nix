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
      identifier = { name = "fullstop"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Kow <eric@erickow.com>";
      author = "Eric Kow";
      homepage = "http://hub.darcs.net/kowey/fullstop";
      url = "";
      synopsis = "Simple sentence segmenter";
      description = "FullStop splits texts into sentences, using some orthographical\nconventions (used in English and hopefully other languages).\n\nIt recognises certain punctuation characters as sentence\ndelimiters (@.?!@) and handles some abbreviations such as\n@Mr.@ and decimal numbers (eg. @4.2@).\n\nNote that this package is mostly a placeholder.  I hope\nthe Haskell/NLP communities will run with it and upload\na more sophisticated (family of) segmenter(s) in its\nplace.  Patches (and new maintainers) would be greeted\nwith delight!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "fullstop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fullstop" or (errorHandler.buildDepError "fullstop"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hstest-fullstop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fullstop" or (errorHandler.buildDepError "fullstop"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }