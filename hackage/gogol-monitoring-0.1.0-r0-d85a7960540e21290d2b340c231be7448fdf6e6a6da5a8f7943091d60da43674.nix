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
      identifier = { name = "gogol-monitoring"; version = "0.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Monitoring SDK.";
      description = "Manages your Stackdriver monitoring data and configurations. Projects\nmust be associated with a Stackdriver account, except for the following\nmethods:\n[monitoredResourceDescriptors.list](v3\\/projects.monitoredResourceDescriptors\\/list),\n[monitoredResourceDescriptors.get](v3\\/projects.monitoredResourceDescriptors\\/get),\n[metricDescriptors.list](v3\\/projects.metricDescriptors\\/list),\n[metricDescriptors.get](v3\\/projects.metricDescriptors\\/get), and\n[timeSeries.list](v3\\/projects.timeSeries\\/list).\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v3@\nof the API.";
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