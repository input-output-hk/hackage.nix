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
      identifier = { name = "github-webhook-handler-snap"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "tomas.carnecky@gmail.com";
      author = "Tomas Carnecky";
      homepage = "";
      url = "";
      synopsis = "GitHub WebHook Handler implementation for Snap";
      description = "...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."github-types" or (errorHandler.buildDepError "github-types"))
          (hsPkgs."github-webhook-handler" or (errorHandler.buildDepError "github-webhook-handler"))
          ];
        buildable = true;
        };
      };
    }