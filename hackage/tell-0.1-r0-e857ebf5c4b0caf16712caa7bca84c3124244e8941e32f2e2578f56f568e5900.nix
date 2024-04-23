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
      specVersion = "2.4";
      identifier = { name = "tell"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2021 Isaac Elliott";
      maintainer = "isaace71295@gmail.com";
      author = "Isaac Elliott";
      homepage = "https://github.com/LightAndLight/tell";
      url = "";
      synopsis = "The MonadTell class and related monad transformers.";
      description = "@MonadTell@ is (morally) a superclass of @MonadWriter@ that only provides @tell@.\nIn contrast to @MonadWriter@, implementors of @MonadTell@ are not required to hold\non to their output. This means that @MonadTell@ is a better choice in situations\nsuch as logging and writing to files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }