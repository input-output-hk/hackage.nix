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
      identifier = { name = "tsweb"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy.groven@gmail.com";
      author = "Jeremy Groven";
      homepage = "";
      url = "";
      synopsis = "An API binding Web.Spock to Database.Beam";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
          (hsPkgs."beam-postgres" or (errorHandler.buildDepError "beam-postgres"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."hvect" or (errorHandler.buildDepError "hvect"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."reroute" or (errorHandler.buildDepError "reroute"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."Spock" or (errorHandler.buildDepError "Spock"))
          (hsPkgs."Spock-core" or (errorHandler.buildDepError "Spock-core"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."superrecord" or (errorHandler.buildDepError "superrecord"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
            (hsPkgs."beam-postgres" or (errorHandler.buildDepError "beam-postgres"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
            (hsPkgs."hvect" or (errorHandler.buildDepError "hvect"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."reroute" or (errorHandler.buildDepError "reroute"))
            (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
            (hsPkgs."Spock" or (errorHandler.buildDepError "Spock"))
            (hsPkgs."Spock-core" or (errorHandler.buildDepError "Spock-core"))
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."superrecord" or (errorHandler.buildDepError "superrecord"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }