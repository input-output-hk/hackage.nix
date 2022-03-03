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
      identifier = { name = "wai-rate-limit-postgres"; version = "0.4.0.0"; };
      license = "Apache-2.0";
      copyright = "2022 Aditya Manthramurthy";
      maintainer = "Aditya Manthramurthy <aditya.mmy@gmail.com>";
      author = "Aditya Manthramurthy";
      homepage = "https://github.com/donatello/wai-rate-limit-postgres";
      url = "";
      synopsis = "See README for more info";
      description = "A backend using PostgreSQL for wai-rate-limit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."wai-rate-limit" or (errorHandler.buildDepError "wai-rate-limit"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          ];
        buildable = true;
        };
      tests = {
        "wai-rate-limit-postgres-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."wai-rate-limit" or (errorHandler.buildDepError "wai-rate-limit"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
            (hsPkgs."wai-rate-limit-postgres" or (errorHandler.buildDepError "wai-rate-limit-postgres"))
            (hsPkgs."postgresql-simple-url" or (errorHandler.buildDepError "postgresql-simple-url"))
            (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."wai-rate-limit" or (errorHandler.buildDepError "wai-rate-limit"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            ];
          buildable = true;
          };
        };
      };
    }