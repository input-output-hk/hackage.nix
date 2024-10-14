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
      identifier = { name = "recommender-als"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Kari Pahula 2020, 2024";
      maintainer = "kaol@iki.fi";
      author = "Kari Pahula";
      homepage = "https://gitlab.com/kaol/recommender-als";
      url = "";
      synopsis = "Recommendations using alternating least squares algorithm";
      description = "This package provides a recommendation algorithm based on alternating\nleast squares algorithm, as made famous by the Netflix Prize.\n.\nIt takes as its input a list of user-item pairs and returns a list of\nrecommendations for each user.  The current implementation is limited\nto using unrated pairs.\n.\nThe algorithm is parallelized and should be quick enough to train the\nmodel within seconds for a few thousand users and items.  Getting\nrecommendations from a computed model happens nearly instantly.\n.\nFor implementation details, see \"Large-scale Parallel Collaborative\nFiltering for the Netflix Prize\" by Yunhong Zhou, Dennis Wilkinson,\nRobert Schreiber and Rong Pan.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "movielens" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."recommender-als" or (errorHandler.buildDepError "recommender-als"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }