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
      identifier = { name = "esqueleto-streaming"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 Supercede Ltd.";
      maintainer = "support@supercede.com";
      author = "Isaac van Bakel";
      homepage = "https://github.com/SupercedeTech/persistent-postgresql-streaming#readme";
      url = "";
      synopsis = "Memory-constant streaming of Esqueleto results from PostgreSQL";
      description = "This library provides a set of APIs for performing queries in Esqueleto\nin constant memory, streaming the results using @conduit@.\n\nThe library relies on PostgreSQL-specific features to avoid loading all the\nresults of a query into memory at once. This allows for accessing results of\nmillions of rows from Haskell without a memory blow-up.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
          (hsPkgs."persistent-postgresql-streaming" or (errorHandler.buildDepError "persistent-postgresql-streaming"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }