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
      identifier = { name = "skemmtun"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Jocelyn.Meyron@grenoble-inp.org";
      author = "Jocelyn MEYRON";
      homepage = "https://github.com/nyorem/skemmtun";
      url = "";
      synopsis = "A MyAnimeList.net client.";
      description = "Contains most of the typical commands for listing/updating\nyour anime/manga list on MyAnimeList.net.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
          buildable = true;
        };
      };
    };
  }