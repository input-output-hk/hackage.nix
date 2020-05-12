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
      identifier = { name = "tsne"; version = "1.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "2017 Rob Agar";
      maintainer = "robagar@fastmail.net";
      author = "Rob Agar";
      homepage = "https://bitbucket.org/robagar/haskell-tsne";
      url = "";
      synopsis = "t-SNE";
      description = "Pure Haskell implementation of the t-SNE dimension reduction algorithm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          ];
        buildable = true;
        };
      exes = {
        "haskell_tsne_example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."tsne" or (errorHandler.buildDepError "tsne"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tSNE-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."tsne" or (errorHandler.buildDepError "tsne"))
            ];
          buildable = true;
          };
        };
      };
    }