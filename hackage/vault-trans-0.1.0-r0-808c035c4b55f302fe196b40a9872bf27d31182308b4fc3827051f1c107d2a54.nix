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
      identifier = { name = "vault-trans"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Bitnomial, Inc. (c) 2018";
      maintainer = "michael@bitnomial.com, opensource@bitnomial.com";
      author = "Michael Dunn";
      homepage = "https://github.com/bitnomial/vault-trans";
      url = "";
      synopsis = "A monad transformer for vault-tool";
      description = "Monad transformer for interfacing with vault.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vault-tool" or (errorHandler.buildDepError "vault-tool"))
        ];
        buildable = true;
      };
    };
  }