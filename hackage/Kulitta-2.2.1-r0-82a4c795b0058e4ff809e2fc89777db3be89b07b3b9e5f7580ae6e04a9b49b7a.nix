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
      specVersion = "1.8";
      identifier = { name = "Kulitta"; version = "2.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2016 Donya Quick";
      maintainer = "Donya Quick <donya.quick@yale.edu>";
      author = "Donya Quick <donya.quick@yale.edu>";
      homepage = "http://www.donyaquick.com/kulitta";
      url = "";
      synopsis = "Library for automated composition and musical learning";
      description = "Kulitta is a framework for automated composition that can also\nbe configured to run as a standalone AI for generating music\nin a particular style.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."Euterpea" or (errorHandler.buildDepError "Euterpea"))
          (hsPkgs."UISF" or (errorHandler.buildDepError "UISF"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
        ];
        buildable = true;
      };
    };
  }