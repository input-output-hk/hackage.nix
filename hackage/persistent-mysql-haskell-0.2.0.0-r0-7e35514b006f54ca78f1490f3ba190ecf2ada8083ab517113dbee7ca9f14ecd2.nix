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
      specVersion = "1.8";
      identifier = { name = "persistent-mysql-haskell"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Naushadh <naushadh@protonmail.com>";
      author = "Naushadh <naushadh@protonmail.com>, Felipe Lessa <felipe.lessa@gmail.com>, Michael Snoyman";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "A pure haskell backend for the persistent library using MySQL database server.";
      description = "This package contains a backend for persistent using the\nMySQL database server.  Internally it uses the @mysql-haskell@\npackage in order to access the database. See README.md for more.\n\nThis package supports only MySQL 5.1 and above.  However, it\nhas been tested only on MySQL 5.5.\nOnly the InnoDB storage engine is officially supported.\n\nKnown problems:\n\n* This package does not support statements inside other\nstatements.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."mysql-haskell" or (errorHandler.buildDepError "mysql-haskell"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      exes = {
        "persistent-mysql-haskell-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."persistent-mysql-haskell" or (errorHandler.buildDepError "persistent-mysql-haskell"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }