{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "ChasingBottoms";
        version = "1.3.1.3";
      };
      license = "MIT";
      copyright = "Copyright (c) Nils Anders Danielsson 2004-2017.";
      maintainer = "http://www.cse.chalmers.se/~nad/";
      author = "Nils Anders Danielsson";
      homepage = "";
      url = "";
      synopsis = "For testing partial and infinite values.";
      description = "Do you ever feel the need to test code involving bottoms (e.g. calls to\nthe @error@ function), or code involving infinite values? Then this\nlibrary could be useful for you.\n\nIt is usually easy to get a grip on bottoms by showing a value and\nwaiting to see how much gets printed before the first exception is\nencountered. However, that quickly gets tiresome and is hard to automate\nusing e.g. QuickCheck\n(<http://www.cse.chalmers.se/~rjmh/QuickCheck/>). With this library you\ncan do the tests as simply as the following examples show.\n\nTesting explicitly for bottoms:\n\n> > isBottom (head [])\n> True\n\n> > isBottom bottom\n> True\n\n> > isBottom (\\_ -> bottom)\n> False\n\n> > isBottom (bottom, bottom)\n> False\n\nComparing finite, partial values:\n\n> > ((bottom, 3) :: (Bool, Int)) ==! (bottom, 2+5-4)\n> True\n\n> > ((bottom, bottom) :: (Bool, Int)) <! (bottom, 8)\n> True\n\nShowing partial and infinite values (@\\\\\\/!@ is join and @\\/\\\\!@ is meet):\n\n> > approxShow 4 \$ (True, bottom) \\/! (bottom, 'b')\n> \"Just (True, 'b')\"\n\n> > approxShow 4 \$ (True, bottom) /\\! (bottom, 'b')\n> \"(_|_, _|_)\"\n\n> > approxShow 4 \$ ([1..] :: [Int])\n> \"[1, 2, 3, _\"\n\n> > approxShow 4 \$ (cycle [bottom] :: [Bool])\n> \"[_|_, _|_, _|_, _\"\n\nApproximately comparing infinite, partial values:\n\n> > approx 100 [2,4..] ==! approx 100 (filter even [1..] :: [Int])\n> True\n\n> > approx 100 [2,4..] /=! approx 100 (filter even [bottom..] :: [Int])\n> True\n\nThe code above relies on the fact that @bottom@, just as @error\n\\\"...\\\"@, @undefined@ and pattern match failures, yield\nexceptions. Sometimes we are dealing with properly non-terminating\ncomputations, such as the following example, and then it can be nice to\nbe able to apply a time-out:\n\n> > timeOut' 1 (reverse [1..5])\n> Value [5,4,3,2,1]\n\n> > timeOut' 1 (reverse [1..])\n> NonTermination\n\nThe time-out functionality can be used to treat \\\"slow\\\" computations as\nbottoms:\n\n@\n\\> let tweak = Tweak &#x7b; approxDepth = Just 5, timeOutLimit = Just 2 &#x7d;\n\\> semanticEq tweak (reverse [1..], [1..]) (bottom :: [Int], [1..] :: [Int])\nTrue\n@\n\n@\n\\> let tweak = noTweak &#x7b; timeOutLimit = Just 2 &#x7d;\n\\> semanticJoin tweak (reverse [1..], True) ([] :: [Int], bottom)\nJust ([],True)\n@\n\nThis can of course be dangerous:\n\n@\n\\> let tweak = noTweak &#x7b; timeOutLimit = Just 0 &#x7d;\n\\> semanticEq tweak (reverse [1..100000000]) (bottom :: [Integer])\nTrue\n@\n\nTimeouts can also be applied to @IO@ computations:\n\n> > let primes () = unfoldr (\\(x:xs) -> Just (x, filter ((/= 0) . (`mod` x)) xs)) [2..]\n> > timeOutMicro 100 (print \$ primes ())\n> [2,NonTermination\n> > timeOutMicro 10000 (print \$ take 10 \$ primes ())\n> [2,3,5,7,11,13,17,19,23,29]\n> Value ()\n\nFor the underlying theory and a larger example involving use of\nQuickCheck, see the article \\\"Chasing Bottoms, A Case Study in Program\nVerification in the Presence of Partial and Infinite Values\\\"\n(<http://www.cse.chalmers.se/~nad/publications/danielsson-jansson-mpc2004.html>).\n\nThe code has been tested using GHC. Most parts can probably be\nported to other Haskell compilers, but this would require some work.\nThe @TimeOut@ functions require preemptive scheduling, and most of\nthe rest requires @Data.Generics@; @isBottom@ only requires\nexceptions, though.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.mtl)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.syb)
        ];
      };
      tests = {
        "ChasingBottomsTestSuite" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.syb)
            (hsPkgs.array)
          ];
        };
      };
    };
  }