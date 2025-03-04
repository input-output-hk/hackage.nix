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
      specVersion = "3.4";
      identifier = { name = "web-view-colonnade"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "lorenzo@users.noreply.github.com";
      author = "José Lorenzo Rodríguez";
      homepage = "https://github.com/lorenzo/web-view-colonnade";
      url = "";
      synopsis = "Build HTML tables using web-view and colonnade.";
      description = "Build HTML tables using web-view and colonnade. This module provides\nfunctionality similar to @lucid-colonnade@ and @blaze-colonnade@ but for the\nweb-view library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colonnade" or (errorHandler.buildDepError "colonnade"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."web-view" or (errorHandler.buildDepError "web-view"))
        ];
        buildable = true;
      };
      tests = {
        "web-view-colonnade-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."colonnade" or (errorHandler.buildDepError "colonnade"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."web-view" or (errorHandler.buildDepError "web-view"))
            (hsPkgs."web-view-colonnade" or (errorHandler.buildDepError "web-view-colonnade"))
          ];
          buildable = true;
        };
      };
    };
  }