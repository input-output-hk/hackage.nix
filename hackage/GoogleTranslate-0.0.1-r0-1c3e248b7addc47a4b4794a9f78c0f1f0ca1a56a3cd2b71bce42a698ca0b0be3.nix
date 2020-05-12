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
      specVersion = "1.6";
      identifier = { name = "GoogleTranslate"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2010 Andy Stewart";
      maintainer = "lazycat.manatee@gmail.com";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Interface to Google Translate API";
      description = "Interface to Google Translate API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."download-curl" or (errorHandler.buildDepError "download-curl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }