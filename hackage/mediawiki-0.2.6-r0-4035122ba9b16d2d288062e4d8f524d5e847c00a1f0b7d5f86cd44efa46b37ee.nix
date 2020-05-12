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
      identifier = { name = "mediawiki"; version = "0.2.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sigbjorn Finne <sof@forkIO.com>";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "";
      url = "";
      synopsis = "Interfacing with the MediaWiki API";
      description = "A complete Haskell binding to the MediaWiki API letting you\nprogrammatically access (read and write) MediaWiki content.\n\nSee <http://www.mediawiki.org/wiki/API> and <http://haskell.forkio.com/>\nfor more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = {
        "main" = {
          depends = [
            (hsPkgs."mediawiki" or (errorHandler.buildDepError "mediawiki"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        "listCat" = {
          depends = [
            (hsPkgs."mediawiki" or (errorHandler.buildDepError "mediawiki"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        "linksTo" = {
          depends = [
            (hsPkgs."mediawiki" or (errorHandler.buildDepError "mediawiki"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }