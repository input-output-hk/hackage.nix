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
      identifier = { name = "patronscraper"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "forkk@forkk.net";
      author = "Forkk";
      homepage = "";
      url = "";
      synopsis = "A webpage scraper for Patreon which dumps a list of patrons to a text file.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "patronscraper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."HandsomeSoup" or (errorHandler.buildDepError "HandsomeSoup"))
          ];
          buildable = true;
        };
      };
    };
  }