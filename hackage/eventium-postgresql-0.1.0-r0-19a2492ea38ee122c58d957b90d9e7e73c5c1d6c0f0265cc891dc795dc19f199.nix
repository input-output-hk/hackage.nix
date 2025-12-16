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
      identifier = { name = "eventium-postgresql"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Alexander Sidorenko";
      author = "";
      homepage = "https://github.com/aleks-sidorenko/eventium#readme";
      url = "";
      synopsis = "Postgres implementations for eventium";
      description = "Eventium-postgresql provides a PostgreSQL-based event store implementation for the Eventium event\nsourcing framework. It uses the Persistent library for type-safe database access and provides\nefficient event storage and retrieval with support for aggregate streams, event versioning, and\noptimistic concurrency control. This is a production-ready backend for event-sourced applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."eventium-core" or (errorHandler.buildDepError "eventium-core"))
          (hsPkgs."eventium-sql-common" or (errorHandler.buildDepError "eventium-sql-common"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."eventium-core" or (errorHandler.buildDepError "eventium-core"))
            (hsPkgs."eventium-sql-common" or (errorHandler.buildDepError "eventium-sql-common"))
            (hsPkgs."eventium-test-helpers" or (errorHandler.buildDepError "eventium-test-helpers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }