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
      identifier = { name = "wai-control"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felixspringer149@gmail.com";
      author = "Felix Springer";
      homepage = "https://github.com/jumper149/wai-control";
      url = "";
      synopsis = "Run wai Applications in IO based monads";
      description = "This package allows 'IO' based monads in covariant and contravariant positions\nof <https://hackage.haskell.org/package/wai wai> 'Application's.\n\nThe monads, which are applicable for this, need to have\n'MonadUnliftIO' instances.\nThis are for most cases 'ReaderT' stacks based on the 'IO' monad.\nThis package will especially be of interest, if you are sharing access to\n'MVar's, 'TVar's or other concurrent data, while controlling that access with\nmonad transformers.\n\nThis package is based on\n<https://hackage.haskell.org/package/wai-transformers wai-transformers> by Athan\nClark.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-websockets" or (errorHandler.buildDepError "wai-websockets"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
        ];
        buildable = true;
      };
    };
  }