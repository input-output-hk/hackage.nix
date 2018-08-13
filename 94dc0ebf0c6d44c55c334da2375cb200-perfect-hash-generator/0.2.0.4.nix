{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "perfect-hash-generator";
        version = "0.2.0.4";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Karl Ostmo <kostmo@gmail.com>";
      author = "Karl Ostmo <kostmo@gmail.com>";
      homepage = "https://github.com/kostmo/perfect-hash-generator#readme";
      url = "";
      synopsis = "Perfect minimal hashing implementation in native Haskell";
      description = "A <https://en.wikipedia.org/wiki/Perfect_hash_function perfect hash function> for a set @S@ is a hash function that maps distinct elements in @S@ to a set of integers, with __no collisions__. A <https://en.wikipedia.org/wiki/Perfect_hash_function#Minimal_perfect_hash_function minimal perfect hash function> is a perfect hash function that maps @n@ keys to @n@ __consecutive__ integers, e.g. the numbers from @0@ to @n-1@.\n\nIn contrast with the <https://hackage.haskell.org/package/PerfectHash PerfectHash package>, which is a binding to a C-based library, this package is a fully-native Haskell implementation.\n\nIt is intended primarily for generating C code for embedded applications (compare to @<https://www.gnu.org/software/gperf/manual/gperf.html#Search-Structures gperf>@). The output of this tool is a pair of arrays that can be included in generated C code for __<https://en.wikipedia.org/wiki/C_dynamic_memory_allocation allocation>-free hash tables__.\n\nThough lookups also perform reasonably well for Haskell applications, it hasn't been benchmarked thorougly with respect to other data structures.\n\nThis implementation was adapted from <http://stevehanov.ca/blog/index.php?id=119 Steve Hanov's Blog>.\n\n= Usage\nThe library is written generically to hash both strings and raw integers according to the <http://isthe.com/chongo/tech/comp/fnv/ FNV-1a algorithm>. Integers are split by octets before hashing.\n\n> import Data.PerfectHash.Construction (createMinimalPerfectHash)\n>\n> tuples = [\n>    (1000, 1)\n>  , (5555, 2)\n>  , (9876, 3)\n>  ]\n>\n> lookup_table = createMinimalPerfectHash tuples\n\nGeneration of C code based on the arrays in @lookup_table@ is left as an exercise to the reader. Algorithm documentation in the \"Data.PerfectHash.Hashing\" and \"Data.PerfectHash.Lookup\" modules will be helpful.\n\nSee the @hash-perfectly-strings-demo@ and @hash-perfectly-ints-demo@, as well as the test suite, for working examples.\n\n> \$ stack build\n> \$ stack exec hash-perfectly-strings-demo";
      buildType = "Simple";
    };
    components = {
      "perfect-hash-generator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-ordlist)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "hash-perfectly-ints-demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.optparse-applicative)
            (hsPkgs.perfect-hash-generator)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "hash-perfectly-strings-demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.optparse-applicative)
            (hsPkgs.perfect-hash-generator)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "regression-tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.optparse-applicative)
            (hsPkgs.perfect-hash-generator)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }