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
      specVersion = "1.0";
      identifier = { name = "HTF"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "";
      author = "Stefan Wehr <wehr@informatik.uni-freiburg.de>";
      homepage = "http://www.informatik.uni-freiburg.de/~wehr/software/haskell/";
      url = "";
      synopsis = "The Haskell Test Framework";
      description = "The HTF lets you write HUnit tests (http://hunit.sourceforge.net)\nand QuickCheck (http://www.cs.chalmers.se/~rjmh/QuickCheck/) properties\nin an easy and convenient way. Additionally, the HTF provides a facility\nfor testing programs by running them and comparing the actual output with\nthe expected output (so called \"file-based tests\").\nThe HTF uses Template Haskell to collect all tests and properties,\nso you do not need to write boilerplate code for that purpose.\nPreprocessor macros provide you with file name and line number information\nfor tests and properties that failed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      exes = {
        "htf-pp" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }