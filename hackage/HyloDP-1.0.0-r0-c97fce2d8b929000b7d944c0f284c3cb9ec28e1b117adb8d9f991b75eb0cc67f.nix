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
      specVersion = "2.4";
      identifier = { name = "HyloDP"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "David Llorens and Juan Miguel Vilar, 2020";
      maintainer = "David Llorens <dllorens@uji.es>";
      author = "David Llorens <dllorens@uji.es>, Juan Miguel Vilar <jvilar@uji.es>";
      homepage = "https://github.com/DavidLlorens/HyloDP";
      url = "";
      synopsis = "A package for  solving dynamic programming problems in Haskell";
      description = "This package contains the library HyloDP for solving dynamic programming problems in Haskell, and six solved DP problems: Edit Distance, Fibonacci, Knapsack, Longest Common Subsequence, Random Walk and Text Segmentation.\n\nThe library HyloDP implements the code of the research article:\n\n['Easily solving dynamic programming problems in Haskell by memoization of hylomorphisms'](https://doi.org/10.1002/spe.2887) by D.Llorens and J.M. Vilar. Software: Practice and Experience (ISSN:1097-024X). 2020; 50: 2193–2211.\n\nA preliminary version of the article can be downloaded from [here](https://repositori.uji.es/xmlui/bitstream/handle/10234/191226/71752.pdf?sequence=1).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
        ];
        buildable = true;
      };
      exes = {
        "EditDistanceMain" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
            (hsPkgs."HyloDP" or (errorHandler.buildDepError "HyloDP"))
          ];
          buildable = true;
        };
        "FibonacciMain" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
            (hsPkgs."HyloDP" or (errorHandler.buildDepError "HyloDP"))
          ];
          buildable = true;
        };
        "TextSegmentationMain" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HyloDP" or (errorHandler.buildDepError "HyloDP"))
          ];
          buildable = true;
        };
        "KnapsackMain" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
            (hsPkgs."HyloDP" or (errorHandler.buildDepError "HyloDP"))
          ];
          buildable = true;
        };
        "RandomWalkMain" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
            (hsPkgs."HyloDP" or (errorHandler.buildDepError "HyloDP"))
          ];
          buildable = true;
        };
        "LongestCommonSubsequenceMain" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
            (hsPkgs."HyloDP" or (errorHandler.buildDepError "HyloDP"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HyloDP" or (errorHandler.buildDepError "HyloDP"))
          ];
          buildable = true;
        };
      };
    };
  }