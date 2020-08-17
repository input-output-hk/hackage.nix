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
      identifier = { name = "eventsourcing-postgresql"; version = "0.9.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "Tom Feron <tho.feron@gmail.com>";
      author = "Tom Feron <tho.feron@gmail.com>";
      homepage = "https://github.com/thoferon/eventsourcing";
      url = "";
      synopsis = "PostgreSQL adaptor for eventsourcing.";
      description = "Adaptor to use PostgreSQL as a back-end with eventsourcing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."eventsourcing" or (errorHandler.buildDepError "eventsourcing"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }