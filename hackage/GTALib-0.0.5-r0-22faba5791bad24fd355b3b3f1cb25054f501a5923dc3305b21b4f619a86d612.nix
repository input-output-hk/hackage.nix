let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "GTALib"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emoto@mist.i.u-tokyo.ac.jp";
      author = "Kento Emoto";
      homepage = "https://bitbucket.org/emoto/gtalib";
      url = "";
      synopsis = "A library for GTA programming";
      description = "This package provides the core functionalities of the GTA (Generate, Test, and Aggregate) programming framework on Haskell (c.f., Kento Emoto, Sebastian Fischer, Zhenjiang Hu: Generate, Test, and Aggregate - A Calculation-based Framework for Systematic Parallel Programming with MapReduce. ESOP 2012: 254-273. The authors' version is available at <http://www.ipl-lab.org/~emoto/ESOP2012.pdf>).\n\n/Example/\n\nThe following code is a GTA program to solve the 0-1 Knapsack problem (<http://en.wikipedia.org/wiki/Knapsack_problem>). It /appears to be an exponential cost/ proram in the number of input items, because it appears to generate all item selections by @subsP items@ (/Generate/), discard those with total weight heavier than the knapsack's capacity by @`filterBy` weightlimit capacity@ (/Test/), and take the most valuable selection by @`aggregateBy` maxsumsolutionWith getValue@ (/Aggregate/). However, it /actually runs in a linear time/ owing to our proposed program transformation 'Filter-embedding Semiring Fusion' implemented in the library. In addition, it runs in /parallel/ so that you can get linear speedup.\n\n> knapsack capacity items =\n>  subsP items\n>  `filterBy` weightlimit capacity\n>  `aggregateBy` maxsumsolutionWith getValue\n>\n> getValue (_, v) = v\n> getWeight (w, _) = w\n>\n> weightlimit w = (<=w) <.> weightsum where\n>   weightsum = joinListAlgebra times single nil --workaround for cabal's brace-eating bug\n>   x1 `times` x2  = (   x1 +    x2) `min` (w+1)\n>   single i  = getWeight i `min` (w+1)\n>   nil = 0\n\nSeveral examples of GTA programming are found in /examples/ directory at <https://bitbucket.org/emoto/gtalib/src>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ];
        };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."GTALib" or (buildDepError "GTALib"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          };
        };
      };
    }