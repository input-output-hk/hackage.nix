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
      specVersion = "2.4";
      identifier = { name = "rec-def"; version = "0.1"; };
      license = "BSD-2-Clause";
      copyright = "2022 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/haskell-rec-def";
      url = "";
      synopsis = "Recusively defined values";
      description = "This library provides safe APIs that allow you to define and calculate\nvalues recursively, and still get a result out:\n\n> let s1 = rInsert 23 s2\n>     s2 = rInsert 42 s1\n> in getR s1\n\nwill not loop, but rather produces the set @fromList [23,42]@\n\nSee \"Data.Recursive.Examples\" for more examples, or just browse the modules\n\n* \"Data.Recursive.Bool\"\n* \"Data.Recursive.Set\"\n* \"Data.Recursive.DualBool\"\n\nMore APIs (e.g. for 'Natural') can be added over time, as need and good\nuse-cases arise.\n\nFor the (unsafe) building blocks to build such APIs, see\n\n* \"Data.Recursive.R.Internal\" for the wrapper that turns an IO-implemented\npropagator into a pure data structure\n* \"Data.Recursive.Propagator.Naive\" for a naive propagator implementation\n* \"Data.Recursive.Propagator.P2\" for a smarter propagator implementation for\nthe two-point lattice, i.e. 'Bool'\n\nThe library is not (yet) focussed on performance, and uses a rather naive\npropagator implementation. Expect this to be slow if you have large graphs.\nThis may be improved in the future (e.g. by propagating only deltas, and\naccumulating deltas before applying a function), but for now the focus is on\nforemost providing this capability in the first place and getting the\nuser-facing API right.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."rec-def" or (errorHandler.buildDepError "rec-def"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
        "dejafu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."concurrency" or (errorHandler.buildDepError "concurrency"))
            (hsPkgs."dejafu" or (errorHandler.buildDepError "dejafu"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-dejafu" or (errorHandler.buildDepError "tasty-dejafu"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }