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
      identifier = { name = "persistent-sqlite"; version = "0.6.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Backend for the persistent library using sqlite3.";
      description = "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."data-object" or (errorHandler.buildDepError "data-object"))
          (hsPkgs."neither" or (errorHandler.buildDepError "neither"))
          ];
        libs = (pkgs.lib).optional (flags.systemlib) (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3"));
        buildable = true;
        };
      };
    }