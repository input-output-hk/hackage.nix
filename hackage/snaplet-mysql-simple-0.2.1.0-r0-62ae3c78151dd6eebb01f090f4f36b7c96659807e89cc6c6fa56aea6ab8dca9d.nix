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
      specVersion = "1.6";
      identifier = { name = "snaplet-mysql-simple"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@ibotty.net";
      author = "Tobias Florek";
      homepage = "https://github.com/ibotty/snaplet-mysql-simple";
      url = "";
      synopsis = "mysql-simple snaplet for the Snap Framework";
      description = "This snaplet contains support for using the MariaDB and MySQL\ndatabase with a Snap Framework application via the mysql-simple\npackage. It also includes an untested authentication backend.\nHeavily based on snaplet-postgresql-simple by Doug Beardsley.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mysql-simple" or (errorHandler.buildDepError "mysql-simple"))
          (hsPkgs."mysql" or (errorHandler.buildDepError "mysql"))
          (hsPkgs."resource-pool-catchio" or (errorHandler.buildDepError "resource-pool-catchio"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }