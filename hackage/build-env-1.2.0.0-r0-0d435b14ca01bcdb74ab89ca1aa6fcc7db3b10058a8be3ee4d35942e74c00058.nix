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
      identifier = { name = "build-env"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari & Sam Derbyshire";
      homepage = "https://github.com/bgamari/build-env";
      url = "";
      synopsis = "Compute, fetch and install Cabal build plans into a local environment";
      description = "__build-env__ allows one to compute, fetch and install Cabal build plans\ninto a local environment, registering the libraries into a free-standing\npackage database.\n\nIn particular, __build-env__ enables bootstrapping of Haskell packages\nin hermetic build environments, without the use of @cabal-install@ or Stack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."semaphore-compat" or (errorHandler.buildDepError "semaphore-compat"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "build-env" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."semaphore-compat" or (errorHandler.buildDepError "semaphore-compat"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."build-env" or (errorHandler.buildDepError "build-env"))
          ];
          buildable = true;
        };
      };
    };
  }