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
      identifier = { name = "gogol-replicapool-updater"; version = "0.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Compute Engine Instance Group Updater SDK.";
      description = "[Deprecated. Please use compute.instanceGroupManagers.update method.\nreplicapoolupdater API will be disabled after December 30th, 2016]\nUpdates groups of Compute Engine instances.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1beta1@\nof the API.\n\nLabels:\n\n* Limited Availability";
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