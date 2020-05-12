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
    flags = { representable = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "chimera"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 Bodigrim";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Bodigrim";
      homepage = "https://github.com/Bodigrim/chimera#readme";
      url = "";
      synopsis = "Lazy infinite streams with O(1) indexing";
      description = "There are plenty of memoizing libraries on Hackage, but they\nusually fall into two categories:\n\n* Store cache as a flat array, enabling us\nto obtain cached values in O(1) time, which is nice.\nThe drawback is that one must specify the size\nof the array beforehand,\nlimiting an interval of inputs,\nand actually allocate it at once.\n* Store cache as a lazy binary tree.\nThanks to laziness, one can freely use the full range of inputs.\nThe drawback is that obtaining values from a tree\ntakes logarithmic time and is unfriendly to CPU cache,\nwhich kinda defeats the purpose.\n\nThis package intends to tackle both issues,\nproviding a data type 'Chimera' for\nlazy infinite compact streams with cache-friendly O(1) indexing.\n\nAdditional features include:\n\n* memoization of recursive functions and recurrent sequences,\n* memoization of functions of several, possibly signed arguments,\n* efficient memoization of boolean predicates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optionals (flags.representable) [
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chimera" or (errorHandler.buildDepError "chimera"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chimera" or (errorHandler.buildDepError "chimera"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }