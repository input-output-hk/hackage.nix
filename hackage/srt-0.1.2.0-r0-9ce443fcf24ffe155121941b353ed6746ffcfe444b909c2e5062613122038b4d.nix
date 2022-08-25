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
      identifier = { name = "srt"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "dan.firth@homotopic.tech";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "The data type for SRT files.";
      description = "The data type for SRT files. https://en.wikipedia.org/wiki/SubRip";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."simple-media-timestamp" or (errorHandler.buildDepError "simple-media-timestamp"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }