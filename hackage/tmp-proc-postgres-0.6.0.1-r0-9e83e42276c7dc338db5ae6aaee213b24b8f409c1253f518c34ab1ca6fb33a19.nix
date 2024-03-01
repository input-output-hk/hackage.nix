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
      identifier = { name = "tmp-proc-postgres"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Tim Emiola";
      maintainer = "adetokunbo@users.noreply.github.com";
      author = "Tim Emiola";
      homepage = "";
      url = "";
      synopsis = "Launch a PostgreSQL database in docker using tmp-proc";
      description = "Demos how to use tmp-proc to run a PostgreSQL database in docker in a unittest.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tmp-proc" or (errorHandler.buildDepError "tmp-proc"))
          ];
        buildable = true;
        };
      tests = {
        "integration-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-tmp-proc" or (errorHandler.buildDepError "hspec-tmp-proc"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tmp-proc" or (errorHandler.buildDepError "tmp-proc"))
            (hsPkgs."tmp-proc-postgres" or (errorHandler.buildDepError "tmp-proc-postgres"))
            ];
          buildable = true;
          };
        };
      };
    }