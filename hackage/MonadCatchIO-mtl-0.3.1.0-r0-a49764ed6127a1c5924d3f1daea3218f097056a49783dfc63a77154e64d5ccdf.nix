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
      specVersion = "1.4";
      identifier = { name = "MonadCatchIO-mtl"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jcpetruzza@gmail.com";
      author = "";
      homepage = "http://darcsden.com/jcpetruzza/MonadCatchIO-mtl";
      url = "";
      synopsis = "Monad-transformer version of the Control.Exception module";
      description = "Provides a monad-transformer version of the @Control.Exception.catch@\nfunction. For this, it defines the @MonadCatchIO@ class, a subset of\n@MonadIO@. It defines proper instances for most monad transformers in\nthe 'mtl' library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          ];
        buildable = true;
        };
      };
    }