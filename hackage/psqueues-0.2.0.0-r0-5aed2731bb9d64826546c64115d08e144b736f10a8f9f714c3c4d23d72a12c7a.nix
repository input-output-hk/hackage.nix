{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "psqueues";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@better.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Pure priority search queues";
      description = "The psqueues package provides\n<http://en.wikipedia.org/wiki/Priority_queue Priority Search Queues> in\nthree different flavors.\n\n* @OrdPSQ k p v@, which uses the @Ord k@ instance to provide fast insertion,\ndeletion and lookup. This implementation is based on Ralf Hinze's\n<http://citeseer.ist.psu.edu/hinze01simple.html A Simple Implementation Technique for Priority Search Queues>.\nHence, it is similar to the\n<http://hackage.haskell.org/package/PSQueue PSQueue> library, although it is\nconsiderably faster and provides a slightly different API.\n\n* @IntPSQ p v@ is a far more efficient implementation. It fixes the key type\nto @Int@ and uses a <http://en.wikipedia.org/wiki/Radix_tree radix tree>\n(like @IntMap@) with an additional min-heap property.\n\n* @HashPSQ k p v@ is a fairly straightforward extension of @IntPSQ@: it\nsimply uses the keys' hashes as indices in the @IntPSQ@. If there are any\nhash collisions, it uses an @OrdPSQ@ to resolve those. The performance of\nthis implementation is comparable to that of @IntPSQ@, but it is more widely\napplicable since the keys are not restricted to @Int@, but rather to any\n@Hashable@ datatype.\n\nEach of the three implementations provides the same API, so they can be used\ninterchangeably. The benchmarks show how they perform relative to one\nanother, and also compared to the other Priority Search Queue\nimplementations on Hackage:\n<http://hackage.haskell.org/package/PSQueue PSQueue>\nand\n<http://hackage.haskell.org/package/fingertree-psqueue fingertree-psqueue>.\n\n<<http://i.imgur.com/KmbDKR6.png>>\n\n<<http://i.imgur.com/ClT181D.png>>\n\nTypical applications of Priority Search Queues include:\n\n* Caches, and more specifically LRU Caches;\n\n* Schedulers;\n\n* Pathfinding algorithms, such as Dijkstra's and A*.";
      buildType = "Simple";
    };
    components = {
      "psqueues" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.ghc-prim);
      };
      tests = {
        "psqueues-tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.psqueues)
            (hsPkgs.tagged)
          ];
        };
      };
      benchmarks = {
        "psqueues-benchmarks" = {
          depends  = [
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.fingertree-psqueue)
            (hsPkgs.PSQueue)
            (hsPkgs.random)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.psqueues)
          ];
        };
      };
    };
  }