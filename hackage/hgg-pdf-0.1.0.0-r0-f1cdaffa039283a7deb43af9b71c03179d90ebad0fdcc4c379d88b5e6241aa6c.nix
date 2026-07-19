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
      specVersion = "3.0";
      identifier = { name = "hgg-pdf"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "https://github.com/frenzieddoll/hgg";
      url = "";
      synopsis = "PDF backend for hgg (HPDF)";
      description = "Vector PDF backend for hgg. Interprets the [Primitive] list from\nhgg-core into HPDF (Graphics.PDF, pure Haskell, BSD-3) drawing\ncommands, in the same single-pass architecture as the SVG backend.\nCurrently limited to the 14 standard PDF fonts (Latin only); for CJK\nlabels use hgg-rasterific (PNG + TrueType) instead.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."HPDF" or (errorHandler.buildDepError "HPDF"))
          (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
        ];
        buildable = true;
      };
      tests = {
        "hgg-pdf-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-pdf" or (errorHandler.buildDepError "hgg-pdf"))
          ];
          buildable = true;
        };
      };
    };
  }