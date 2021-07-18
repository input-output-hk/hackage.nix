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
      specVersion = "1.12";
      identifier = {
        name = "simple-media-timestamp-formatting";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "2021 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Formatting for simple-media-timestamp";
      description = "Please see the README on GitHub at <https://github.com/githubuser/simple-media-timestamp-formatting#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."simple-media-timestamp" or (errorHandler.buildDepError "simple-media-timestamp"))
          ];
        buildable = true;
        };
      };
    }