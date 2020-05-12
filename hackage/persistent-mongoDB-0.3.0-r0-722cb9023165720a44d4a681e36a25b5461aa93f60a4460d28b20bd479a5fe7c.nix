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
      identifier = { name = "persistent-mongoDB"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>, Rick Richardson <rick.richardson@gmail.com>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://docs.yesodweb.com/persistent/";
      url = "";
      synopsis = "Backend for the persistent library using mongoDB.";
      description = "Backend for the persistent library using mongoDB.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."neither" or (errorHandler.buildDepError "neither"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."compact-string-fix" or (errorHandler.buildDepError "compact-string-fix"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
        buildable = true;
        };
      };
    }