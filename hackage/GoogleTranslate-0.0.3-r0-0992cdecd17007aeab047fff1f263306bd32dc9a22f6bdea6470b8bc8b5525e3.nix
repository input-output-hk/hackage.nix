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
      identifier = { name = "GoogleTranslate"; version = "0.0.3"; };
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
          (hsPkgs."AttoJson" or (errorHandler.buildDepError "AttoJson"))
          (hsPkgs."download-curl" or (errorHandler.buildDepError "download-curl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
          ];
        buildable = true;
        };
      };
    }