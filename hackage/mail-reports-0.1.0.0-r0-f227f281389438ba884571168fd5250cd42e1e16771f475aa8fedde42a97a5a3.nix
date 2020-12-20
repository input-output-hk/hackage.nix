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
      identifier = { name = "mail-reports"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "enum@doomanddarkness.eu";
      author = "Enum Cohrs";
      homepage = "";
      url = "";
      synopsis = "A parser library for DMARC reports";
      description = "This library is meant to parse DMARC aggregated reports from bytestrings, XML documents or streaming bytestrings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."streaming-utils" or (errorHandler.buildDepError "streaming-utils"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }