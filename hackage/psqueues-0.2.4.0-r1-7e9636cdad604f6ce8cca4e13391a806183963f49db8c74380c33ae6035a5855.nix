{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "psqueues"; version = "0.2.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <jaspervdj@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Pure priority search queues";
      description = "The psqueues package provides\n<http://en.wikipedia.org/wiki/Priority_queue Priority Search Queues> in\nthree different flavors.\n\n* @OrdPSQ k p v@, which uses the @Ord k@ instance to provide fast insertion,\ndeletion and lookup. This implementation is based on Ralf Hinze's\n<http://citeseer.ist.psu.edu/hinze01simple.html A Simple Implementation Technique for Priority Search Queues>.\nHence, it is similar to the\n<http://hackage.haskell.org/package/PSQueue PSQueue> library, although it is\nconsiderably faster and provides a slightly different API.\n\n* @IntPSQ p v@ is a far more efficient implementation. It fixes the key type\nto @Int@ and uses a <http://en.wikipedia.org/wiki/Radix_tree radix tree>\n(like @IntMap@) with an additional min-heap property.\n\n* @HashPSQ k p v@ is a fairly straightforward extension of @IntPSQ@: it\nsimply uses the keys' hashes as indices in the @IntPSQ@. If there are any\nhash collisions, it uses an @OrdPSQ@ to resolve those. The performance of\nthis implementation is comparable to that of @IntPSQ@, but it is more widely\napplicable since the keys are not restricted to @Int@, but rather to any\n@Hashable@ datatype.\n\nEach of the three implementations provides the same API, so they can be used\ninterchangeably. The benchmarks show how they perform relative to one\nanother, and also compared to the other Priority Search Queue\nimplementations on Hackage:\n<http://hackage.haskell.org/package/PSQueue PSQueue>\nand\n<http://hackage.haskell.org/package/fingertree-psqueue fingertree-psqueue>.\n\n<<http://i.imgur.com/KmbDKR6.png>>\n\n<<http://i.imgur.com/ClT181D.png>>\n\nTypical applications of Priority Search Queues include:\n\n* Caches, and more specifically LRU Caches;\n\n* Schedulers;\n\n* Pathfinding algorithms, such as Dijkstra's and A*.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "psqueues-tests" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."psqueues" or ((hsPkgs.pkgs-errors).buildDepError "psqueues"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "psqueues-benchmarks" = {
          depends = [
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."fingertree-psqueue" or ((hsPkgs.pkgs-errors).buildDepError "fingertree-psqueue"))
            (hsPkgs."PSQueue" or ((hsPkgs.pkgs-errors).buildDepError "PSQueue"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."psqueues" or ((hsPkgs.pkgs-errors).buildDepError "psqueues"))
            ];
          buildable = true;
          };
        };
      };
    }