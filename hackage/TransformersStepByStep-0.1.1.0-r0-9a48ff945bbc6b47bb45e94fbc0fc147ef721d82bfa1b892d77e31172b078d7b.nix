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
      identifier = { name = "TransformersStepByStep"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martin@grabmueller.de";
      author = "Martin Grabmueller";
      homepage = "https://github.com/mgrabmueller/TransformersStepByStep";
      url = "";
      synopsis = "Tutorial on monad transformers.";
      description = "In this tutorial, we describe how to use monad\ntransformers in order to incrementally add\nfunctionality to Haskell programs.  It is not a\npaper about implementing transformers, but about\nusing them to write elegant, clean and powerful\nprograms in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "TransformersStepByStep" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }