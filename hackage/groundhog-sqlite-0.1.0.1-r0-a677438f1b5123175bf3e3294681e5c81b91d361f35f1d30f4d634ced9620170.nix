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
    flags = { systemlib = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "groundhog-sqlite"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Sqlite3 backend for the groundhog library";
      description = "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."groundhog" or (errorHandler.buildDepError "groundhog"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."pool-conduit" or (errorHandler.buildDepError "pool-conduit"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        libs = (pkgs.lib).optional (flags.systemlib) (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3"));
        buildable = true;
        };
      };
    }