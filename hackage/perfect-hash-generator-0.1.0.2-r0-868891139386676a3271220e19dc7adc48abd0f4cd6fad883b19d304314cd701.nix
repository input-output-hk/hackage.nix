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
      identifier = { name = "perfect-hash-generator"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Karl Ostmo <kostmo@gmail.com>";
      author = "Karl Ostmo <kostmo@gmail.com>";
      homepage = "https://github.com/kostmo/perfect-hash-generator#readme";
      url = "";
      synopsis = "Perfect minimal hashing implementation in native Haskell";
      description = "A <https://en.wikipedia.org/wiki/Perfect_hash_function perfect hash function> for a set @S@ is a hash function that maps distinct elements in @S@ to a set of integers, with __no collisions__. A <https://en.wikipedia.org/wiki/Perfect_hash_function#Minimal_perfect_hash_function minimal perfect hash function> is a perfect hash function that maps @n@ keys to @n@ __consecutive__ integers, e.g. the numbers from @0@ to @n-1@.\n\nIn contrast with the <https://hackage.haskell.org/package/PerfectHash PerfectHash package>, which is a binding to a C-based library, this package is a fully-native Haskell implementation.\n\nIt is intended primarily for generating C code for embedded applications (compare to @<https://www.gnu.org/software/gperf/manual/gperf.html#Search-Structures gperf>@). The output of this tool is a pair of arrays that can be included in generated C code for __<https://en.wikipedia.org/wiki/C_dynamic_memory_allocation allocation>-free hash tables__.\n\nThough lookups also perform reasonably well for Haskell applications, it hasn't been benchmarked thorougly with respect to other data structures.\n\nThis implementation was adapted from <http://stevehanov.ca/blog/index.php?id=119 Steve Hanov's Blog>.\n\n= Usage\nThe library is written generically to hash both strings and raw integers. Integers should be wrapped in the @Atom@ newtype:\n\n> import Data.PerfectHash.Construction (createMinimalPerfectHash)\n>\n> tuples = [\n>    (Atom 1000, 1)\n>  , (Atom 5555, 2)\n>  , (Atom 9876, 3)\n>  ]\n>\n> lookup_table = createMinimalPerfectHash tuples\n\nGeneration of C code based on the arrays in @lookup_table@ is left as an exercise to the reader. Algorithm documentation in the \"Data.PerfectHash.Hashing\" and \"Data.PerfectHash.Lookup\" modules will be helpful.\n\nSee the @hash-perfectly-strings-demo@ and @hash-perfectly-ints-demo@, as well as the test suite, for working examples.\n\n> \$ stack build\n> \$ stack exec hash-perfectly-strings-demo\n\n= Caveats\nOnly integer keys of at most __32-bits__ have been demonstrated to work properly.  Since the hash function masks to 32 bits, colliding 64-bit integers can hang the lookup table construction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "hash-perfectly-ints-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."perfect-hash-generator" or (errorHandler.buildDepError "perfect-hash-generator"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "hash-perfectly-strings-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."perfect-hash-generator" or (errorHandler.buildDepError "perfect-hash-generator"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            ];
          buildable = true;
          };
        };
      tests = {
        "regression-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."perfect-hash-generator" or (errorHandler.buildDepError "perfect-hash-generator"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }