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
      identifier = { name = "spanout"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Viktor Tanyi <tanyi.viktor@gmail.com>";
      author = "Viktor Tanyi";
      homepage = "https://github.com/vtan/spanout";
      url = "";
      synopsis = "A breakout clone written in netwire and gloss";
      description = "A breakout clone written in netwire and gloss.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "spanout" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."netwire" or (errorHandler.buildDepError "netwire"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
          buildable = true;
        };
      };
    };
  }