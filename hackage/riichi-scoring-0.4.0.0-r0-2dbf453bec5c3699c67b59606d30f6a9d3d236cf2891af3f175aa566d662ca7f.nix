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
      specVersion = "2.2";
      identifier = { name = "riichi-scoring"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "surplussinewaves@gmail.com";
      author = "ZBW";
      homepage = "https://github.com/SurplusSineWaves/riichi-scoring";
      url = "";
      synopsis = "A CLI tool for interpreting and scoring Riichi Mahjong hands.";
      description = "This package provides a CLI tool with commands for determining the yaku, fu, and score of a hand in Riichi Mahjong. It can also determine the waits of a partial hand.\nSee README.md for usage, or run: riichi --help";
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
      tests = {
        "riichi-scoring-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."riichi-scoring" or (errorHandler.buildDepError "riichi-scoring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }