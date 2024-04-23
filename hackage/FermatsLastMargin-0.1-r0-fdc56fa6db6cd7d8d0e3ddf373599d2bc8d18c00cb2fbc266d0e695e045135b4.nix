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
      identifier = { name = "FermatsLastMargin"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Shae Erisson <shae@ScannedInAvian.com>";
      author = "Shae Erisson";
      homepage = "http://www.scannedinavian.com/";
      url = "";
      synopsis = "Annotate ps and pdf documents";
      description = "Distributed annotation for PostScript and PDF documents.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "flm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."syb-with-class" or (errorHandler.buildDepError "syb-with-class"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            (hsPkgs."HAppS-Data" or (errorHandler.buildDepError "HAppS-Data"))
            (hsPkgs."HAppS-State" or (errorHandler.buildDepError "HAppS-State"))
            (hsPkgs."HAppS-Server" or (errorHandler.buildDepError "HAppS-Server"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."HAppS-IxSet" or (errorHandler.buildDepError "HAppS-IxSet"))
            (hsPkgs."HAppS-Util" or (errorHandler.buildDepError "HAppS-Util"))
          ];
          buildable = true;
        };
      };
    };
  }