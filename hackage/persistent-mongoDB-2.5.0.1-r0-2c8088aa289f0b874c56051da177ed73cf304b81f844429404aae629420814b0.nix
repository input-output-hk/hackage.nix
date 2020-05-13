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
    flags = { high_precision_date = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "persistent-mongoDB"; version = "2.5.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Backend for the persistent library using mongoDB.";
      description = "MongoDB backend for the persistent library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          ];
        buildable = true;
        };
      };
    }