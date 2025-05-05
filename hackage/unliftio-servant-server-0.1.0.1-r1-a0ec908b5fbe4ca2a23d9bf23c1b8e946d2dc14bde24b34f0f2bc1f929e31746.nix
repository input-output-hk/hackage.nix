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
      specVersion = "3.0";
      identifier = { name = "unliftio-servant-server"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2024 Bellroy Pty Ltd";
      maintainer = "Bellroy Tech Team <haskell@bellroy.com>";
      author = "Bellroy Tech Team <haskell@bellroy.com>";
      homepage = "https://github.com/bellroy/unliftio-servant-server";
      url = "";
      synopsis = "Use MonadUnliftIO on servant APIs";
      description = "unliftio-servant-server provides convenience functions for running\nservant APIs whose monads have a 'MonadUnliftIO' instance.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ];
        buildable = true;
      };
    };
  }