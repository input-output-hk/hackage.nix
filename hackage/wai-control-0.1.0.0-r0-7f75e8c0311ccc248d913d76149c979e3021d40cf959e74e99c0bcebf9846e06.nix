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
      identifier = { name = "wai-control"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felixspringer149@gmail.com";
      author = "Felix Springer";
      homepage = "https://github.com/jumper149/wai-control";
      url = "";
      synopsis = "Give wai Applications an IO-based inner monad";
      description = "This package allows IO-based monads in covariant and contravariant positions\nof wai Applications.\nThe monads, which are applicable for this, need to have MonadBaseControl IO\ninstances. This are for most cases ReaderT stacks based on the IO monad.\nThis package will especially be of interest, if you are sharing access to\nMVars, TVars or other concurrent data, while controlling that access with\nmonad transformers.\nThis package is based on wai-transformers by Athan Clark:\nhttps://github.com/athanclark/wai-transformers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."monad-control-identity" or (errorHandler.buildDepError "monad-control-identity"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-websockets" or (errorHandler.buildDepError "wai-websockets"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ];
        buildable = true;
        };
      };
    }