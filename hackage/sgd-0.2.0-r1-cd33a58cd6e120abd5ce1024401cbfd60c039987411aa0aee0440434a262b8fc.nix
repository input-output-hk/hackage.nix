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
      identifier = { name = "sgd"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/sgd";
      url = "";
      synopsis = "Stochastic gradient descent";
      description = "Implementation of a Stochastic Gradient Descent optimization method.\nSee examples directory in the source package for examples of usage.\n\nIt is a preliminary implementation of the SGD method and API may change\nin future versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."logfloat" or (errorHandler.buildDepError "logfloat"))
          (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
          ];
        buildable = true;
        };
      };
    }