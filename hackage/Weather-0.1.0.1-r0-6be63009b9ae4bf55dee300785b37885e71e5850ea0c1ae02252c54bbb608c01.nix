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
      identifier = { name = "Weather"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bryan@bryanstamour.com";
      author = "Bryan St. Amour";
      homepage = "https://github.com/bstamour/weather";
      url = "";
      synopsis = "Library for interacting with the Weather Underground JSON API.";
      description = "Weather is a simple library for interacting with the Weather Underground JSON API. It is not complete, but it may be useful still.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }