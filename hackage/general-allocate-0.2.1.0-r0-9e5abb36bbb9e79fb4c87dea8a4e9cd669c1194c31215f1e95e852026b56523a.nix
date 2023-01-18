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
      identifier = { name = "general-allocate"; version = "0.2.1.0"; };
      license = "Apache-2.0";
      copyright = "Coypright 2022 Shea Levy.";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "";
      url = "";
      synopsis = "Exception-safe resource management in more monads";
      description = "Write monad-generic resource-safe code that can be instantiated in both\nIO and pure contexts.\n\n[exceptions](https://hackage.haskell.org/package/exceptions) provides @MonadMask@,\nwhich generalizes the @bracket@ pattern but only for monads that can catch exceptions\n(i.e., transformer stacks on top of @IO@ or @Either SomeException@). [resourcet](https://hackage.haskell.org/package/resourcet)\nprovides @MonadResource@,\nwhich allows for arbitrarily interleaved allocations and releases of resources, but only\nfor @MonadUnliftIO@. This module provides type-classes for both types of resource allocation\nwhich can be properly instantiated at more monads, through the expedient of weakening a\nrequirement which doesn't matter in the cases where it's not met: In monads that can't catch\nexceptions, release actions will not be called in the case of an exception (asynchronous or\notherwise), but in those same monads the entire monadic computation will be terminated by\nthe same exception and so resource management has ended anyway.\n\nSee \"Control.Monad.With\" for scoped (@bracket@-style) resource management.\n\nSee \"Control.Monad.Allocate\" for arbitrary lifetime resource management.\n\nSee \"Data.GeneralAllocate\" to define values that can be used for allocation in\neither resource management style.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }