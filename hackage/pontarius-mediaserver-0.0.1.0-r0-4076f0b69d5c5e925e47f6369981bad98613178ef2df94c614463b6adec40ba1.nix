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
      identifier = { name = "pontarius-mediaserver"; version = "0.0.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright © Jon Kristensen, 2010-2011";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen, Mahdi Abdinejadi";
      homepage = "http://www.pontarius.org/projects/pontarius-mediaserver/";
      url = "http://www.pontarius.org/releases/pontarius-mediaserver-0.0.1.0.tar.gz";
      synopsis = "Extended Personal Media Network (XPMN) media server";
      description = "Pontarius Media Server will be a free and privacy-aware\nExtended Personal Media Network (XPMN) media server.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pontarius-mediaserver-test" = {
          depends = [
            (hsPkgs."HLogger" or (errorHandler.buildDepError "HLogger"))
            (hsPkgs."pontarius-xmpp" or (errorHandler.buildDepError "pontarius-xmpp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            ];
          buildable = true;
          };
        };
      };
    }