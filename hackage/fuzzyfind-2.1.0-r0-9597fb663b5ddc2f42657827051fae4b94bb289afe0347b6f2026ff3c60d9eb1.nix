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
      identifier = { name = "fuzzyfind"; version = "2.1.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2021 Unison Computing";
      maintainer = "Rúnar Bjarnason <runar.bjarnason@unison.cloud>";
      author = "Rúnar Bjarnason";
      homepage = "http://github.com/runarorama/fuzzyfind/";
      url = "";
      synopsis = "Fuzzy text matching";
      description = "A package that provides an API for fuzzy text search in Haskell, using a modified version of the Smith-Waterman algorithm. The search is intended to behave similarly to the excellent fzf tool by Junegunn Choi.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fuzzyfind" or (errorHandler.buildDepError "fuzzyfind"))
          ];
          buildable = true;
        };
      };
    };
  }