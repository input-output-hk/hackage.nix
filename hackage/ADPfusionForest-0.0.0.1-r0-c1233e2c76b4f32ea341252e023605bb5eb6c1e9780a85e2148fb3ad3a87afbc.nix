{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10.0";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-instances" or ((hsPkgs.pkgs-errors).buildDepError "vector-instances"))
          (hsPkgs."vector-th-unbox" or ((hsPkgs.pkgs-errors).buildDepError "vector-th-unbox"))
          (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
          (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
          (hsPkgs."DPutils" or ((hsPkgs.pkgs-errors).buildDepError "DPutils"))
          (hsPkgs."ForestStructures" or ((hsPkgs.pkgs-errors).buildDepError "ForestStructures"))
          (hsPkgs."GrammarProducts" or ((hsPkgs.pkgs-errors).buildDepError "GrammarProducts"))
          (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      exes = {
        "AlignNewickTrees" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."log-domain" or ((hsPkgs.pkgs-errors).buildDepError "log-domain"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
            (hsPkgs."ADPfusionForest" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusionForest"))
            (hsPkgs."BiobaseNewick" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseNewick"))
            (hsPkgs."ForestStructures" or ((hsPkgs.pkgs-errors).buildDepError "ForestStructures"))
            (hsPkgs."FormalGrammars" or ((hsPkgs.pkgs-errors).buildDepError "FormalGrammars"))
            (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
            (hsPkgs."PrimitiveArray-Pretty" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray-Pretty"))
            ];
          buildable = if flags.examples then true else false;
          };
        "AffineAlignNewickTreesSmall" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."log-domain" or ((hsPkgs.pkgs-errors).buildDepError "log-domain"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."ADPfusion" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusion"))
            (hsPkgs."ADPfusionForest" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusionForest"))
            (hsPkgs."BiobaseNewick" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseNewick"))
            (hsPkgs."ForestStructures" or ((hsPkgs.pkgs-errors).buildDepError "ForestStructures"))
            (hsPkgs."FormalGrammars" or ((hsPkgs.pkgs-errors).buildDepError "FormalGrammars"))
            (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
            (hsPkgs."PrimitiveArray-Pretty" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray-Pretty"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            (hsPkgs."ADPfusionForest" or ((hsPkgs.pkgs-errors).buildDepError "ADPfusionForest"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."ForestStructures" or ((hsPkgs.pkgs-errors).buildDepError "ForestStructures"))
            ];
          buildable = true;
          };
        };
      };
    }