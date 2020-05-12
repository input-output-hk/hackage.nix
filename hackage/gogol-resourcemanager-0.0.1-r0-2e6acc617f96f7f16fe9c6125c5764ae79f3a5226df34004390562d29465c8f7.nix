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
      identifier = { name = "gogol-resourcemanager"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Cloud Resource Manager SDK.";
      description = "The Google Cloud Resource Manager API provides methods for creating,\nreading, and updating of project metadata.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1beta1@\nof the API.";
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