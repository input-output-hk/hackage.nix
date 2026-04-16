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
      specVersion = "3.0";
      identifier = { name = "riichi-scoring"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "surplussinewaves@gmail.com";
      author = "ZBW";
      homepage = "https://github.com/SurplusSineWaves/riichi-scoring";
      url = "";
      synopsis = "A CLI tool for interpreting and scoring Riichi Mahjong hands.";
      description = "This package provides a CLI tool with commands for determining the yaku, fu, and score of a hand in Riichi Mahjong. It can also determine the waits of a partial hand.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      exes = {
        "riichi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."riichi-scoring" or (errorHandler.buildDepError "riichi-scoring"))
          ];
          buildable = true;
        };
      };
    };
  }