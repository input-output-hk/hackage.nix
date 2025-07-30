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
      specVersion = "1.18";
      identifier = { name = "persistent-sql-lifted"; version = "0.4.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Freckle Education";
      author = "";
      homepage = "https://github.com/freckle/persistent-sql-lifted#readme";
      url = "";
      synopsis = "Monad classes for running queries with Persistent and Esqueleto";
      description = "This package introduces two classes: MonadSqlBackend for monadic contexts in\nwhich a SqlBackend is available, and MonadSqlTx for contexts in which we\ncan execute a SQL transaction.\n\nAdditionally, this package provides variants of query-running utilities from\nPersistent and Esqueleto which are concretized to use SqlBackend, generalized\nto a MonadSqlBackend m constraint rather than \"ReaderT backend\", and wrapped in\ncheckpointCallStack so that exceptions will include call stacks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."annotated-exception" or (errorHandler.buildDepError "annotated-exception"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }