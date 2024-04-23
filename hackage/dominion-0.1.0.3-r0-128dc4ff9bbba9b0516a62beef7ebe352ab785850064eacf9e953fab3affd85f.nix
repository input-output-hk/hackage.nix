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
      identifier = { name = "dominion"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bluemangroupie@gmail.com";
      author = "Aditya Bhargava";
      homepage = "http://github.com/egonschiele/dominion";
      url = "";
      synopsis = "A simulator for the board game Dominion.";
      description = "A simulator for the board game Dominion.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."random-extras" or (errorHandler.buildDepError "random-extras"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
        ];
        buildable = true;
      };
      exes = {
        "dominion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."random-extras" or (errorHandler.buildDepError "random-extras"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
          ];
          buildable = true;
        };
      };
    };
  }