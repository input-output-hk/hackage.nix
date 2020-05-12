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
      specVersion = "1.2";
      identifier = { name = "MonadCatchIO-transformers"; version = "0.0.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ariep@xs4all.nl";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Monad-transformer version of the Control.Exception module";
      description = "Provides a monad-transformer version of the @Control.Exception.catch@\nfunction. For this, it defines the @MonadCatchIO@ class, a subset of\n@MonadIO@. It defines proper instances for most monad transformers in\nthe 'transformers' library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }