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
      identifier = {
        name = "postgresql-migration-persistent";
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "2025 Jappie Klooster";
      maintainer = "hi@jappie.me";
      author = "Jappie Klooster, Jean-Paul Calderone ";
      homepage = "https://github.com/jappeace/postgresql-migration-persistent#readme";
      url = "";
      synopsis = "A PostgreSQL persistent schema migration utility";
      description = "Wraps postgresql migration and persistent to make sure the persistent schema\naligns with what's in the database.\nIf not, it returns a list of suggested manual migrations\nto be put in postgresql-migration.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."postgresql-migration" or (errorHandler.buildDepError "postgresql-migration"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }