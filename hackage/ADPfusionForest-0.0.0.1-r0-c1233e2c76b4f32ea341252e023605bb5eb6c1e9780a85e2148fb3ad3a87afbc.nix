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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ADPfusionForest"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2016-2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, Sarah Berkemer, 2016-2017";
      homepage = "https://github.com/choener/ADPfusionForest";
      url = "";
      synopsis = "Dynamic programming on tree and forest structures";
      description = "ADPfusion for formal languages on tree and forest structures.\nThis library connects\n<http://hackage.haskell.org/package/ForestStructures @ForestStructures@>,\na library which defines efficient, tree-like structures and\n<http://hackage.haskell.org/package/ADPfusion @ADPfusion@>.\nThe result is the ability to easily write formal grammars which\nact on input trees (as compared to the more common input\nstrings).\n\nBuild this library with GHC-8.0.2";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-instances" or (errorHandler.buildDepError "vector-instances"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
          (hsPkgs."DPutils" or (errorHandler.buildDepError "DPutils"))
          (hsPkgs."ForestStructures" or (errorHandler.buildDepError "ForestStructures"))
          (hsPkgs."GrammarProducts" or (errorHandler.buildDepError "GrammarProducts"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
        ];
        buildable = true;
      };
      exes = {
        "AlignNewickTrees" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
            (hsPkgs."ADPfusionForest" or (errorHandler.buildDepError "ADPfusionForest"))
            (hsPkgs."BiobaseNewick" or (errorHandler.buildDepError "BiobaseNewick"))
            (hsPkgs."ForestStructures" or (errorHandler.buildDepError "ForestStructures"))
            (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
            (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
            (hsPkgs."PrimitiveArray-Pretty" or (errorHandler.buildDepError "PrimitiveArray-Pretty"))
          ];
          buildable = if flags.examples then true else false;
        };
        "AffineAlignNewickTreesSmall" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ADPfusion" or (errorHandler.buildDepError "ADPfusion"))
            (hsPkgs."ADPfusionForest" or (errorHandler.buildDepError "ADPfusionForest"))
            (hsPkgs."BiobaseNewick" or (errorHandler.buildDepError "BiobaseNewick"))
            (hsPkgs."ForestStructures" or (errorHandler.buildDepError "ForestStructures"))
            (hsPkgs."FormalGrammars" or (errorHandler.buildDepError "FormalGrammars"))
            (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
            (hsPkgs."PrimitiveArray-Pretty" or (errorHandler.buildDepError "PrimitiveArray-Pretty"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."ADPfusionForest" or (errorHandler.buildDepError "ADPfusionForest"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."ForestStructures" or (errorHandler.buildDepError "ForestStructures"))
          ];
          buildable = true;
        };
      };
    };
  }