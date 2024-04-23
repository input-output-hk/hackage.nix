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
      specVersion = "1.18";
      identifier = { name = "req-url-extra"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/req-url-extra#readme";
      url = "";
      synopsis = "Provides URI/URL helper functions for use with Req";
      description = "This package provides helper functions for use with URIs and URLs in Req.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
        ];
        buildable = true;
      };
      exes = {
        "sample" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            (hsPkgs."req" or (errorHandler.buildDepError "req"))
            (hsPkgs."req-url-extra" or (errorHandler.buildDepError "req-url-extra"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "req-url-extra-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            (hsPkgs."req" or (errorHandler.buildDepError "req"))
            (hsPkgs."req-url-extra" or (errorHandler.buildDepError "req-url-extra"))
          ];
          buildable = true;
        };
      };
    };
  }