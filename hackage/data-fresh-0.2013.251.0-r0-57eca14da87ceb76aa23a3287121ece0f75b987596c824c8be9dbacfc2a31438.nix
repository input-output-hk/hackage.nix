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
      identifier = { name = "data-fresh"; version = "0.2013.251.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Stijn van Drongelen";
      maintainer = "Stijn van Drongelen <rhymoid@gmail.com>";
      author = "Stijn van Drongelen";
      homepage = "";
      url = "";
      synopsis = "Interface and functor transformers for fresh values";
      description = "A simple library, which contains an interface for generating fresh values.\n\nThis library also includes two functor transformers which implement this\ninterface. They consume fresh values from user-supplied comonads.\nCurrently, two approaches are implemented:\n\n* In @Stream@, the comonad provides a way to succeed a value.\n\n* In @Delta@, the comonad provides a way to split the value or to succeeded\nit. The benefit is that the underlying functor doesn't need to be a monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }