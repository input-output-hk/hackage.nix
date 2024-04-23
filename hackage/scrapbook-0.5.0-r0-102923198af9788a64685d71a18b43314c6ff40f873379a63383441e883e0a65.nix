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
      specVersion = "1.12";
      identifier = { name = "scrapbook"; version = "0.5.0"; };
      license = "MIT";
      copyright = "2018 MATSUBARA Nobutada";
      maintainer = "MATSUBARA Nobutada";
      author = "MATSUBARA Nobutada";
      homepage = "https://github.com/matsubara0507/scrapbook#readme";
      url = "";
      synopsis = "collect posts of site that is wrote in config yaml using feed or scraping";
      description = "Please see the README on GitHub at <https://github.com/matsubara0507/scrapbook#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."scrapbook-core" or (errorHandler.buildDepError "scrapbook-core"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      exes = {
        "scrapbook" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."drinkery" or (errorHandler.buildDepError "drinkery"))
            (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
            (hsPkgs."githash" or (errorHandler.buildDepError "githash"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."scrapbook" or (errorHandler.buildDepError "scrapbook"))
            (hsPkgs."scrapbook-core" or (errorHandler.buildDepError "scrapbook-core"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
      tests = {
        "scrapbook-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."scrapbook" or (errorHandler.buildDepError "scrapbook"))
            (hsPkgs."scrapbook-core" or (errorHandler.buildDepError "scrapbook-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
    };
  }