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
      identifier = { name = "wai-control"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felixspringer149@gmail.com";
      author = "Felix Springer";
      homepage = "https://github.com/jumper149/wai-control";
      url = "";
      synopsis = "Give wai Applications an IO-based inner monad";
      description = "This package allows IO-based monads in covariant and contravariant positions\nof wai Applications.\n\nThe monads, which are applicable for this, need to have MonadBaseControl IO\ninstances.\nThis are for most cases ReaderT stacks based on the IO monad.\nThis package will especially be of interest, if you are sharing access to\nMVars, TVars or other concurrent data, while controlling that access with\nmonad transformers.\n\nThis package is based on\n<https://github.com/athanclark/wai-transformers wai-transformers> by Athan\nClark.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-control-identity" or (errorHandler.buildDepError "monad-control-identity"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-websockets" or (errorHandler.buildDepError "wai-websockets"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
        ];
        buildable = true;
      };
    };
  }