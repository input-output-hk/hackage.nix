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
      specVersion = "1.6";
      identifier = { name = "MonadCatchIO-transformers"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ariep@xs4all.nl";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Monad-transformer compatible version of the Control.Exception module";
      description = "Provides functions to throw and catch exceptions. Unlike the functions from\n@Control.Exception@, which work in @IO@, these work in any stack of monad\ntransformers (from the 'transformers' package) with @IO@ as the base monad.\nYou can extend this functionality to other monads, by creating an instance\nof the @MonadCatchIO@ class.\nWarning: this package is deprecated. Use the 'exceptions' package instead,\nif possible.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          ];
        buildable = true;
        };
      };
    }