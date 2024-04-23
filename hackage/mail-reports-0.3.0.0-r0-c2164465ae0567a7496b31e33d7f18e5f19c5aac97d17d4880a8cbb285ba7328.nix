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
      identifier = { name = "mail-reports"; version = "0.3.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "enum@doomanddarkness.eu";
      author = "Enum Cohrs";
      homepage = "";
      url = "";
      synopsis = "A parser library for DMARC and SMTP TLS reports";
      description = "This library is meant to parse DMARC and TLSRPT aggregated reports from bytestrings or XML documents.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
    };
  }