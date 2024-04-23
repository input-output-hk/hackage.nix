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
      specVersion = "1.2";
      identifier = { name = "imgurder"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dcolish@gmail.com";
      author = "Dan Colish";
      homepage = "";
      url = "";
      synopsis = "Uploader for Imgur";
      description = "A simple uploader for the Imgur api.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "imgurder" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hxt-xpath" or (errorHandler.buildDepError "hxt-xpath"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
          buildable = true;
        };
      };
    };
  }