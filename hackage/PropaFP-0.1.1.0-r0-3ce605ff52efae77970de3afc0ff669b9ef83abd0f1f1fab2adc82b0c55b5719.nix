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
      specVersion = "1.12";
      identifier = { name = "PropaFP"; version = "0.1.1.0"; };
      license = "MPL-2.0";
      copyright = "MPL-2.0";
      maintainer = "jrasheed178@gmail.com";
      author = "Junaid Rasheed";
      homepage = "https://github.com/rasheedja/PropaFP#readme";
      url = "";
      synopsis = "Auto-active verification of floating-point programs";
      description = "Please see the README on GitHub at <https://github.com/rasheedja/PropaFP#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
          (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
        buildable = true;
        };
      exes = {
        "propafp-prettify" = {
          depends = [
            (hsPkgs."PropaFP" or (errorHandler.buildDepError "PropaFP"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        "propafp-run-dreal" = {
          depends = [
            (hsPkgs."PropaFP" or (errorHandler.buildDepError "PropaFP"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        "propafp-run-lppaver" = {
          depends = [
            (hsPkgs."PropaFP" or (errorHandler.buildDepError "PropaFP"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        "propafp-run-metitarski" = {
          depends = [
            (hsPkgs."PropaFP" or (errorHandler.buildDepError "PropaFP"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        "propafp-translate-dreal" = {
          depends = [
            (hsPkgs."PropaFP" or (errorHandler.buildDepError "PropaFP"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        "propafp-translate-metitarski" = {
          depends = [
            (hsPkgs."PropaFP" or (errorHandler.buildDepError "PropaFP"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      tests = {
        "PropaFP-test" = {
          depends = [
            (hsPkgs."PropaFP" or (errorHandler.buildDepError "PropaFP"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      };
    }