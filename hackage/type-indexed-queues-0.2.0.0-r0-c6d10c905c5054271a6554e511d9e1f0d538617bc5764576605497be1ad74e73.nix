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
      specVersion = "1.10";
      identifier = { name = "type-indexed-queues"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2017 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/type-indexed-queues";
      url = "";
      synopsis = "Queues with verified and unverified versions.";
      description = "This library provides implementations of five different queues\n(binomial, pairing, skew, leftist, and Braun), each in two\nflavours: one verified, and one not.\n\nAt the moment, only structural invariants are maintained.\n\nMore information, and a walkthough of a couple implementations, can\nbe found at this <http://doisinkidney.com/posts/2017-04-23-verifying-data-structures-in-haskell-lhs.html blog post>.\n\n/Comparisons of verified and unverified queues/\n\nBoth versions of each queue are provided for comparison: for\ninstance, compare the standard leftist queue (in\n\"Data.Queue.Leftist\"):\n\n> data Leftist a\n>   = Leaf\n>   | Node !Int\n>         a\n>         (Leftist a)\n>         (Leftist a)\n\nTo its size-indexed counterpart (in \"Data.Queue.Indexed.Leftist\"):\n\n> data Leftist n a where\n>         Leaf :: Leftist 0 a\n>         Node :: !(The Nat (n + m + 1))\n>              -> a\n>              -> Leftist n a\n>              -> Leftist m a\n>              -> !(m <= n)\n>              -> Leftist (n + m + 1) a\n\nThe invariant here (that the size of the left queue must\nalways be less than that of the right) is encoded in the\nproof @m '<=' n@.\n\nWith that in mind, compare the unverified and verified\nimplementatons of @merge@:\n\n> merge Leaf h2 = h2\n> merge h1 Leaf = h1\n> merge h1@(Node w1 p1 l1 r1) h2@(Node w2 p2 l2 r2)\n>   | p1 < p2 =\n>       if ll <= lr\n>           then Node (w1 + w2) p1 l1 (merge r1 h2)\n>           else Node (w1 + w2) p1 (merge r1 h2) l1\n>   | otherwise =\n>       if rl <= rr\n>           then Node (w1 + w2) p2 l2 (merge r2 h1)\n>           else Node (w1 + w2) p2 (merge r2 h1) l2\n>   where\n>     ll = rank r1 + w2\n>     lr = rank l1\n>     rl = rank r2 + w1\n>     rr = rank l2\n\nVerified:\n\n> merge Leaf h2 = h2\n> merge h1 Leaf = h1\n> merge h1@(Node w1 p1 l1 r1 _) h2@(Node w2 p2 l2 r2 _)\n>   | p1 < p2 =\n>       if ll <=. lr\n>         then Node (w1 +. w2) p1 l1 (merge r1 h2)\n>         else Node (w1 +. w2) p1 (merge r1 h2) l1 . totalOrder ll lr\n>   | otherwise =\n>       if rl <=. rr\n>           then Node (w1 +. w2) p2 l2 (merge r2 h1)\n>           else Node (w1 +. w2) p2 (merge r2 h1) l2 . totalOrder rl rr\n>   where\n>     ll = rank r1 +. w2\n>     lr = rank l1\n>     rl = rank r2 +. w1\n>     rr = rank l2\n\n/Using type families and typechecker plugins to encode the invariant/\n\nThe similarity is accomplished through overloading, and some\nhandy functions. For instance, the second if-then-else works\non boolean /singletons/, and the @<=.@ function provides a\nproof of order along with its answer. The actual arithmetic\nis carried out at runtime on normal integers, rather than\nPeano numerals. These tricks are explained in more detail\n\"TypeLevel.Singletons\" and \"TypeLevel.Bool\".\n\nA typechecker plugin does most of the heavy lifting, although\nthere are some (small) manual proofs.\n\n/Uses of verified queues/\n\nThe main interesting use of these sturctures is total traversable\nsorting (<https://github.com/treeowl/sort-traversable sort-traversable>).\nAn implementation of this is provided in \"Data.Traversable.Parts\". I'm\ninterested in finding out other uses for these kinds of structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-typelits-natnormalise" or (buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "type-indexed-queues-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."type-indexed-queues" or (buildDepError "type-indexed-queues"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."type-indexed-queues" or (buildDepError "type-indexed-queues"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."pqueue" or (buildDepError "pqueue"))
            ];
          buildable = true;
          };
        };
      };
    }