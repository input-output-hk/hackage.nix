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
      specVersion = "1.8";
      identifier = { name = "GTALib"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emoto@mist.i.u-tokyo.ac.jp";
      author = "Kento Emoto";
      homepage = "https://bitbucket.org/emoto/gtalib";
      url = "";
      synopsis = "A library for GTA programming           ";
      description = "This package provides the core functionalities of the GTA (Generate, Test, and Aggregate) programming framework on Haskell (c.f., Kento Emoto, Sebastian Fischer, Zhenjiang Hu: Generate, Test, and Aggregate - A Calculation-based Framework for Systematic Parallel Programming with MapReduce. ESOP 2012: 254-273. The authors' version is available at <http://www.ipl-lab.org/~emoto/ESOP2012.pdf>).\n\n/Example/\n\nThe following code is a GTA program to solve the 0-1 Knapsack problem (<http://en.wikipedia.org/wiki/Knapsack_problem>). It /appears to be an exponential cost/ proram in the number of input items, because it appears to generate all item selections by @subsP items@ (/Generate/), discard those with total weight heavier than the knapsack's capacity by @`filterBy` weightlimit capacity@ (/Test/), and take the most valuable selection by @`aggregateBy` maxsumsolutionWith getValue@ (/Aggregate/). However, it /actually runs in a linear time/ owing to our proposed program transformation 'Filter-embedding Semiring Fusion' implemented in the library. In addition, it runs in /parallel/ so that you can get linear speedup.\n\n> knapsack capacity items =\n>  subsP items\n>  `filterBy` weightlimit capacity\n>  `aggregateBy` maxsumsolutionWith getValue\n>\n> getValue (_, v) = v\n> getWeight (w, _) = w\n>\n> weightlimit w = (<=w) <.> weightsum where\n>   weightsum = homJ' times single nil\n>   x1 `times` x2  = (   x1 +    x2) `min` (w+1)\n>   single i  = getWeight i `min` (w+1)\n>   nil = 0\n\nSeveral examples of GTA programming are found in /examples/ directory at <https://bitbucket.org/emoto/gtalib/src>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."GTALib" or (errorHandler.buildDepError "GTALib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }