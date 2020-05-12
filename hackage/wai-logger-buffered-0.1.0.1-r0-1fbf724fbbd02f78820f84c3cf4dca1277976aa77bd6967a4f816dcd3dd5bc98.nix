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
      identifier = { name = "wai-logger-buffered"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Chris Coffey";
      maintainer = "chris@collegevine.com";
      author = "Chris Coffey";
      homepage = "https://github.com/ChrisCoffey/wai-logger-buffered#readme";
      url = "";
      synopsis = "Buffer requets before logging them";
      description = "Simplifies logging request metrics to services like Graphite or Elasticsearch.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-logger-buffered" or (errorHandler.buildDepError "wai-logger-buffered"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      tests = {
        "wai-logger-buffered" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-logger-buffered" or (errorHandler.buildDepError "wai-logger-buffered"))
            ];
          buildable = true;
          };
        };
      };
    }