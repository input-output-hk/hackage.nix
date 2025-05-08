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
      identifier = { name = "gogol-accesscontextmanager"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "Copyright (c) 2015-2025 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay+gogol@gmail.com>, Toni Cebrián <toni@tonicebrian.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Google Access Context Manager SDK.";
      description = "An API for setting attribute based access control to requests to Google Cloud services. /Warning:/ Do not mix /v1alpha/ and /v1/ API usage in the same access policy. The v1alpha API supports new Access Context Manager features, which may have different attributes or behaviors that are not supported by v1. The practice of mixed API usage within a policy may result in the inability to update that policy, including any access levels or service perimeters belonging to it. It is not recommended to use both v1 and v1alpha for modifying policies with critical service perimeters. Modifications using v1alpha should be limited to policies with non-production\\/non-critical service perimeters.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1@\nof the API.";
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