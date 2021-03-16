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
      identifier = { name = "unlift-stm"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "hololeap@users.noreply.github.com";
      author = "hololeap";
      homepage = "https://github.com/hololeap/unlift-stm";
      url = "";
      synopsis = "(un)lifted classes and functions for the STM monad";
      description = "Lifted and unlifted classes and functions for the STM monad. To get\nstarted, just import \"Control.Concurrent.STM.Unlift\". This is meant to\nbe a drop-in replacement for \"Control.Concurrent.STM\".\n\nThis package provides functionality for the STM monad, which is highly\nanalagous to the functionalty for the IO monad found\nin \"Control.Monad.IO.Class\", \"Control.Monad.IO.Unlift\", and\n\"UnliftIO.STM\":\n\n* 'MonadSTM' is a copy of 'MonadIO' modified for 'STM'\n* 'MonadUnliftSTM' is a copy of 'MonadUnliftIO' modified for 'STM'\n* Some functions found in \"Control.Concurrent.STM.Unlift\" are\nre-exported directly from \"UnliftIO.STM\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }