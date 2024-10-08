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
      identifier = { name = "fit"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "2014-2015 Matt Giles";
      maintainer = "matt.w.giles@gmail.com";
      author = "Matt Giles";
      homepage = "";
      url = "";
      synopsis = "FIT file decoder";
      description = "The FIT protocol is used by many sport and fitness devices made by companies\nlike Garmin, for example running watches and bike computers. `fit` provides an\nAPI for parsing these files for analysis or conversion.\n\nCurrently this package is a pretty low-level effort, and you'll need to be familiar\nwith FIT to get much value from it. Specifically, the notion of the FIT \\\"profile\\\" is\nignored entirely, so to make use of the decoded file you'll need to reference the\n\\\"Profile.xls\\\" spreadsheet in the <http://www.thisisant.com/resources/fit FIT SDK>.\n\nThe \"Fit\" module exports a convenient set of data types for examining FIT files, as\nwell as some lenses for extracting specific data. It's intended that the API in the\n\"Fit\" module should be sufficient and convenient for most uses, but if you need access\nto the exact structure of the file you can use the data types in \"Fit.Internal.FitFile\"\nand parsers in \"Fit.Internal.Parse\".\n\nFeel free to contact me if you have any questions, suggestions, or requests.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
        ];
        buildable = true;
      };
      tests = {
        "test-fit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fit" or (errorHandler.buildDepError "fit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-attoparsec" or (errorHandler.buildDepError "hspec-attoparsec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }