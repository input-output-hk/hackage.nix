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
      specVersion = "2.4";
      identifier = { name = "hasql-streams-core"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2022, Andre Marianiello";
      maintainer = "andremarianiello@users.noreply.github.com";
      author = "Andre Marianiello";
      homepage = "https://github.com/andremarianiello/hasql-streams";
      url = "";
      synopsis = "Stream Hasql queries";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."hasql-transaction-io" or (errorHandler.buildDepError "hasql-transaction-io"))
        ];
        buildable = true;
      };
    };
  }