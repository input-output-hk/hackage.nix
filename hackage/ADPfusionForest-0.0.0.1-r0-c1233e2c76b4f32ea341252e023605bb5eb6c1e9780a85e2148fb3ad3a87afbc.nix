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
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fgl)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-instances)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.vector-algorithms)
          (hsPkgs.ADPfusion)
          (hsPkgs.DPutils)
          (hsPkgs.ForestStructures)
          (hsPkgs.GrammarProducts)
          (hsPkgs.PrimitiveArray)
          ];
        };
      exes = {
        "AlignNewickTrees" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.log-domain)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.ADPfusion)
            (hsPkgs.ADPfusionForest)
            (hsPkgs.BiobaseNewick)
            (hsPkgs.ForestStructures)
            (hsPkgs.FormalGrammars)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.PrimitiveArray-Pretty)
            ];
          };
        "AffineAlignNewickTreesSmall" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.log-domain)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.ADPfusion)
            (hsPkgs.ADPfusionForest)
            (hsPkgs.BiobaseNewick)
            (hsPkgs.ForestStructures)
            (hsPkgs.FormalGrammars)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.PrimitiveArray-Pretty)
            ];
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.ADPfusionForest)
            ];
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.ForestStructures)
            ];
          };
        };
      };
    }