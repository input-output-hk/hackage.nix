{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ChasingBottoms";
          version = "1.3.0.7";
        };
        license = "MIT";
        copyright = "Copyright (c) Nils Anders Danielsson 2004-2013.";
        maintainer = "http://www.cse.chalmers.se/~nad/";
        author = "Nils Anders Danielsson";
        homepage = "";
        url = "";
        synopsis = "For testing partial and infinite values.";
        description = "Do you ever feel the need to test code involving bottoms (e.g. calls to\nthe @error@ function), or code involving infinite values? Then this\nlibrary could be useful for you.\n\nIt is usually easy to get a grip on bottoms by showing a value and\nwaiting to see how much gets printed before the first exception is\nencountered. However, that quickly gets tiresome and is hard to automate\nusing e.g. QuickCheck\n(<http://www.cse.chalmers.se/~rjmh/QuickCheck/>). With this library you\ncan do the tests as simply as the following examples show.\n\nTesting explicitly for bottoms:\n\n[@> isBottom (head [\\])@] @True@\n\n[@> isBottom bottom@] @True@\n\n[@> isBottom (\\\\_ -> bottom)@] @False@\n\n[@> isBottom (bottom, bottom)@] @False@\n\nComparing finite, partial values:\n\n[@> ((bottom, 3) :: (Bool, Int)) ==! (bottom, 2+5-4)@] @True@\n\n[@> ((bottom, bottom) :: (Bool, Int)) <! (bottom, 8)@] @True@\n\nShowing partial and infinite values (@\\\\\\/!@ is join and @\\/\\\\!@ is meet):\n\n[@> approxShow 4 \$ (True, bottom) \\\\\\/! (bottom, \\'b\\')@] @\\\"Just (True, \\'b\\')\\\"@\n\n[@> approxShow 4 \$ (True, bottom) \\/\\\\! (bottom, \\'b\\')@] @\\\"(_|_, _|_)\\\"@\n\n[@> approxShow 4 \$ ([1..\\] :: [Int\\])@] @\\\"[1, 2, 3, _\\\"@\n\n[@> approxShow 4 \$ (cycle [bottom\\] :: [Bool\\])@] @\\\"[_|_, _|_, _|_, _\\\"@\n\nApproximately comparing infinite, partial values:\n\n[@> approx 100 [2,4..\\] ==! approx 100 (filter even [1..\\] :: [Int\\])@] @True@\n\n[@> approx 100 [2,4..\\] \\/=! approx 100 (filter even [bottom..\\] :: [Int\\])@] @True@\n\nThe code above relies on the fact that @bottom@, just as @error\n\\\"...\\\"@, @undefined@ and pattern match failures, yield\nexceptions. Sometimes we are dealing with properly non-terminating\ncomputations, such as the following example, and then it can be nice to\nbe able to apply a time-out:\n\n[@> timeOut' 1 (reverse [1..5\\])@] @Value [5,4,3,2,1]@\n\n[@> timeOut' 1 (reverse [1..\\])@] @NonTermination@\n\nThe time-out functionality can be used to treat \\\"slow\\\" computations as\nbottoms:\n\n[@> let tweak = Tweak &#x7b; approxDepth = Just 5, timeOutLimit = Just 2 &#x7d;@]\n\n[@> semanticEq tweak (reverse [1..\\], [1..\\]) (bottom :: [Int\\], [1..\\] :: [Int\\])@] @True@\n\n[@> let tweak = noTweak &#x7b; timeOutLimit = Just 2 &#x7d;@]\n\n[@> semanticJoin tweak (reverse [1..\\], True) ([\\] :: [Int\\], bottom)@] @Just ([],True)@\n\nThis can of course be dangerous:\n\n[@> let tweak = noTweak &#x7b; timeOutLimit = Just 0 &#x7d;@]\n\n[@> semanticEq tweak (reverse [1..100000000\\]) (bottom :: [Integer\\])@] @True@\n\nTimeouts can also be applied to @IO@ computations:\n\n[@> let primes = unfoldr (\\\\(x:xs) -> Just (x, filter ((\\/= 0) . (\\`mod\\` x)) xs)) [2..\\]@]\n\n[@> timeOutMicro 100 (print \$ filter ((== 1) . (\\`mod\\` 83)) primes)@] @[167,499,9NonTermination@\n\n[@> timeOutMicro 100 (print \$ take 6 \$ filter ((== 1) . (\\`mod\\` 83)) primes)@] @[167,499,997,1163,1993NonTermination@\n\n[@> timeOutMicro 100 (print \$ take 6 \$ filter ((== 1) . (\\`mod\\` 83)) primes)@] @[167,499,997,1163,1993,2657]@\n\n[@ @] @Value ()@\n\nFor the underlying theory and a larger example involving use of\nQuickCheck, see the article \\\"Chasing Bottoms, A Case Study in Program\nVerification in the Presence of Partial and Infinite Values\\\"\n(<http://www.cse.chalmers.se/~nad/publications/danielsson-jansson-mpc2004.html>).\n\nThe code has been tested using GHC. Most parts can probably be\nported to other Haskell compilers, but this would require some work.\nThe @TimeOut@ functions require preemptive scheduling, and most of\nthe rest requires @Data.Generics@; @isBottom@ only requires\nexceptions, though.";
        buildType = "Simple";
      };
      components = {
        ChasingBottoms = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.mtl
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.syb
          ];
        };
        exes = {
          ChasingBottomsTestSuite = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.mtl
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.syb
              hsPkgs.array
            ];
          };
        };
      };
    }