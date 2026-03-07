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
    flags = { ci = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "eventium-sql-common"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Alexander Sidorenko";
      author = "";
      homepage = "https://github.com/aleks-sidorenko/eventium#readme";
      url = "";
      synopsis = "Common library for SQL event stores";
      description = "Eventium-sql-common provides shared utilities and abstractions for SQL-based event stores.\nIt includes Persistent entity definitions, JSON serialization helpers, and common database\noperations used by eventium-postgresql and eventium-sqlite. This package eliminates code\nduplication between different SQL backend implementations and provides a consistent interface\nfor SQL-based event sourcing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."eventium-core" or (errorHandler.buildDepError "eventium-core"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
        ];
        buildable = true;
      };
    };
  }