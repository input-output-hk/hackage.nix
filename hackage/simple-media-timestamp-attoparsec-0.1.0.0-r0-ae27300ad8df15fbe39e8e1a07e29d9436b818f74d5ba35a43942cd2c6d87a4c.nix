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
        name = "simple-media-timestamp-attoparsec";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2021 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Attoparsec parser for simple-media-timestamp.";
      description = "Attoparsec parser for simple-media-timestamp.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."simple-media-timestamp" or (errorHandler.buildDepError "simple-media-timestamp"))
        ];
        buildable = true;
      };
    };
  }