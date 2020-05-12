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
      identifier = { name = "google-search"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2013 Liyang HU";
      maintainer = "google-search@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/google-search";
      url = "";
      synopsis = "EDSL for Google and GMail search expressions";
      description = "Construct well-typed search expressions for use in various Google services.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }