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
    flags = { ghc7 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-examples"; version = "0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Example programs using the Yesod Web Framework.";
      description = "These are the same examples and tutorials found on the documentation site.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yesod-blog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            ];
          buildable = true;
          };
        "yesod-ajax" = {
          depends = [
            (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            ];
          buildable = true;
          };
        "yesod-file-echo" = {
          depends = [
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            ];
          buildable = true;
          };
        "yesod-pretty-yaml" = {
          depends = [
            (hsPkgs."data-object-yaml" or (errorHandler.buildDepError "data-object-yaml"))
            (hsPkgs."data-object" or (errorHandler.buildDepError "data-object"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            ];
          buildable = true;
          };
        "yesod-i18n" = { buildable = true; };
        "yesod-session" = { buildable = true; };
        "yesod-form" = { buildable = true; };
        "yesod-persistent-synopsis" = {
          depends = [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            ];
          libs = [ (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3")) ];
          buildable = true;
          };
        "yesod-hamlet-synopsis" = {
          depends = [
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            ];
          buildable = true;
          };
        "yesod-chat" = {
          depends = [ (hsPkgs."stm" or (errorHandler.buildDepError "stm")) ];
          buildable = true;
          };
        };
      };
    }