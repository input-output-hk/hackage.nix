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
      identifier = { name = "gogol-streetviewpublish"; version = "0.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Street View Publish SDK.";
      description = "Publishes 360 photos to Google Maps, along with position, orientation,\nand connectivity metadata. Apps can offer an interface for positioning,\nconnecting, and uploading user-generated Street View images.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1@\nof the API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."gogol-core" or (errorHandler.buildDepError "gogol-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }