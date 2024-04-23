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
      identifier = { name = "srt-formatting"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2021 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Format an SRT.";
      description = "Format an SRT data type as Text.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."simple-media-timestamp" or (errorHandler.buildDepError "simple-media-timestamp"))
          (hsPkgs."simple-media-timestamp-formatting" or (errorHandler.buildDepError "simple-media-timestamp-formatting"))
          (hsPkgs."srt" or (errorHandler.buildDepError "srt"))
        ];
        buildable = true;
      };
    };
  }