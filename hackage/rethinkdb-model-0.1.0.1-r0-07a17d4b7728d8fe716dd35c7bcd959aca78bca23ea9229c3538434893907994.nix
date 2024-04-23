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
      identifier = { name = "rethinkdb-model"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sean Hess <seanhess@gmail.com>";
      author = "Sean Hess";
      homepage = "http://github.com/atnnn/haskell-rethinkdb  ";
      url = "";
      synopsis = "Useful tools for modeling data with rethinkdb";
      description = "Useful tools for modeling data with rethinkdb";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rethinkdb" or (errorHandler.buildDepError "rethinkdb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
    };
  }