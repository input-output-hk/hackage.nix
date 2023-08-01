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
      identifier = { name = "ebird-api"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2023 Finley McIlwaine";
      maintainer = "finleymcilwaine@gmail.com";
      author = "Finley McIlwaine";
      homepage = "https://github.com/FinleyMcIlwaine/ebird-haskell";
      url = "";
      synopsis = "A Haskell description of the eBird API";
      description = "[eBird](https://ebird.org/home) is a massive collection of ornithological\nscience projects developed by the\n[Cornell Lab of Ornithology](https://www.birds.cornell.edu/home/). The\n[eBird API](https://documenter.getpostman.com/view/664302/S1ENwy59)\noffers programmatic access to the incredible dataset backing these\nprojects.\n\nThis library contains a description of the\neBird API as a\n[servant](https://hackage.haskell.org/package/servant) API type. It is\nintended for use by those who wish to write their own clients for the\neBird API using\n[servant-client](https://hackage.haskell.org/package/servant-client), or do\ncustom processing of eBird data using the types defined here.\n\nIf you are interested in querying the\neBird API using an existing client, check out the\n[ebird-client](https://hackage.haskell.org/package/ebird-client) library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-iso8601" or (errorHandler.buildDepError "attoparsec-iso8601"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }