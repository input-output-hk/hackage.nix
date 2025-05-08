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
      identifier = { name = "gogol-cloudtrace"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2015-2025 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay+gogol@gmail.com>, Toni Cebrián <toni@tonicebrian.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Cloud Trace SDK.";
      description = "Sends application trace data to Cloud Trace for viewing. Trace data is collected for all App Engine applications by default. Trace data from other applications can be provided using this API. This library is used to interact with the Cloud Trace API directly. If you are looking to instrument your application for Cloud Trace, we recommend using OpenTelemetry.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v2@\nof the API.";
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