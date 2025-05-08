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
    flags = { field-selectors = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "gogol-containeranalysis"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2015-2025 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay+gogol@gmail.com>, Toni Cebrián <toni@tonicebrian.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Container Analysis SDK.";
      description = "This API is a prerequisite for leveraging Artifact Analysis scanning capabilities in both Artifact Registry and with Advanced Vulnerability Insights (runtime scanning) in GKE. In addition, the Container Analysis API is an implementation of the Grafeas API, which enables storing, querying, and retrieval of critical metadata about all of your software artifacts.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1@\nof the API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."gogol-core" or (errorHandler.buildDepError "gogol-core"))
        ];
        buildable = true;
      };
    };
  }