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
      identifier = { name = "postgresql-libpq-notify"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020";
      maintainer = "jonathan.g.fischoff@gmail.com";
      author = "Jonathan Fischoff, Moritz Kiefeir, Leo P. Smith";
      homepage = "https://github.com/jfischoff/postgresql-libpq-notify#readme";
      url = "";
      synopsis = "Minimal dependency PostgreSQL notifications library";
      description = "Minimal dependency PostgreSQL notifications library. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
            (hsPkgs."postgresql-libpq-notify" or (errorHandler.buildDepError "postgresql-libpq-notify"))
            (hsPkgs."postgres-options" or (errorHandler.buildDepError "postgres-options"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tmp-postgres" or (errorHandler.buildDepError "tmp-postgres"))
            ];
          buildable = true;
          };
        };
      };
    }