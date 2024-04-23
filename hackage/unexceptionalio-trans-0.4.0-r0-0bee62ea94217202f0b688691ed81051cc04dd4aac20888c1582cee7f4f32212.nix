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
      specVersion = "1.8";
      identifier = { name = "unexceptionalio-trans"; version = "0.4.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2013-2014 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/unexceptionalio-trans";
      url = "";
      synopsis = "A wrapper around UnexceptionalIO using monad transformers";
      description = "UnexceptionalIO provides a basic type to witness having caught all\nexceptions you can safely handle.  This library builds on that with\ntransformers like ExceptT to provide a more ergonomic tool for many\ncases.\n\nIt is intended that you use qualified imports with this library.\n\n> import UnexceptionalIO.Trans (UIO)\n> import qualified UnexceptionalIO.Trans as UIO";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unexceptionalio" or (errorHandler.buildDepError "unexceptionalio"))
        ];
        buildable = true;
      };
    };
  }