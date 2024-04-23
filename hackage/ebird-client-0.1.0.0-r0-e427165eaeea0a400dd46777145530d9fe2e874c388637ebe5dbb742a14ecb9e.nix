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
      specVersion = "3.0";
      identifier = { name = "ebird-client"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2023 Finley McIlwaine";
      maintainer = "finleymcilwaine@gmail.com";
      author = "Finley McIlwaine";
      homepage = "https://github.com/FinleyMcIlwaine/ebird-haskell";
      url = "";
      synopsis = "Client functions for querying the eBird API.";
      description = "[eBird](https://ebird.org/home) is a massive collection of ornithological\nscience projects developed by the\n[Cornell Lab of Ornithology](https://www.birds.cornell.edu/home/). The\n[eBird API](https://documenter.getpostman.com/view/664302/S1ENwy59)\noffers programmatic access to the incredible dataset backing these\nprojects.\n\nThis library contains functions for retrieving data from the\n[eBird API](https://documenter.getpostman.com/view/664302/S1ENwy59), as\ndefined in the\n[ebird-api](https://hackage.haskell.org/package/ebird-api) library.\n\nIf you'd like to run the queries defined in this library directly on your\ncommand line, checkout out the\n[ebird-cli](https://hackage.haskell.org/package/ebird-cli).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ebird-api" or (errorHandler.buildDepError "ebird-api"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }