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
      specVersion = "1.6";
      identifier = { name = "yesod-examples"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://docs.yesodweb.com/";
      url = "";
      synopsis = "Example programs using the Yesod Web Framework.";
      description = "These are the same examples and tutorials found on the documentation site.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "blog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          ];
          buildable = true;
        };
        "ajax" = {
          depends = [
            (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
          ];
          buildable = true;
        };
        "file-echo" = { buildable = true; };
        "pretty-yaml" = {
          depends = [
            (hsPkgs."data-object-yaml" or (errorHandler.buildDepError "data-object-yaml"))
            (hsPkgs."data-object" or (errorHandler.buildDepError "data-object"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
        "i18n" = { buildable = true; };
        "session" = { buildable = true; };
        "widgets" = {
          depends = [
            (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          ];
          buildable = true;
        };
        "generalized-hamlet" = { buildable = true; };
        "form" = { buildable = true; };
        "persistent-synopsis" = {
          depends = [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
          ];
          buildable = true;
        };
        "hamlet-synopsis" = {
          depends = [
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          ];
          buildable = true;
        };
        "chat" = {
          depends = [ (hsPkgs."stm" or (errorHandler.buildDepError "stm")) ];
          buildable = true;
        };
      };
    };
  }