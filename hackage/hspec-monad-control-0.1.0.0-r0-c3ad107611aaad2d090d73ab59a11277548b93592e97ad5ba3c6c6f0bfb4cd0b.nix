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
      identifier = { name = "hspec-monad-control"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Ben James, 2015";
      maintainer = "bmjames@gmail.com";
      author = "Ben James";
      homepage = "";
      url = "";
      synopsis = "Orphan instances of MonadBase and MonadBaseControl for SpecM";
      description = "Orphan instances of MonadBase and MonadBaseControl for SpecM";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
        ];
        buildable = true;
      };
    };
  }