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
      specVersion = "1.8";
      identifier = { name = "rest-snap"; version = "0.1.17.12"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Rest driver for Snap.";
      description = "Rest driver for Snap.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."rest-core" or (errorHandler.buildDepError "rest-core"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }