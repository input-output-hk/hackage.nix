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
      identifier = { name = "gogol-websecurityscanner"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2015-2025 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay+gogol@gmail.com>, Toni Cebrián <toni@tonicebrian.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Web Security Scanner SDK.";
      description = "Scans your Compute and App Engine apps for common web vulnerabilities.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1@\nof the API.";
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