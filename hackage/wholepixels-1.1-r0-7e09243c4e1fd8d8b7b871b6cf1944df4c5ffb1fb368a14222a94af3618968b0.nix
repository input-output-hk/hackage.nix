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
      specVersion = "1.12";
      identifier = { name = "wholepixels"; version = "1.1"; };
      license = "Apache-2.0";
      copyright = "2019 WholePixels";
      maintainer = "wholepixels@protonmail.com";
      author = "WholePixels";
      homepage = "";
      url = "";
      synopsis = "";
      description = "A library for making generative art with Haskell and Cairo ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hsnoise" or (errorHandler.buildDepError "hsnoise"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }