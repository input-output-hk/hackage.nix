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
      specVersion = "2.2";
      identifier = { name = "doctest-extract"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://hub.darcs.net/thielema/doctest-extract/";
      url = "";
      synopsis = "Alternative doctest implementation that extracts comments to modules";
      description = "@doctest-extract@ lets you write test examples and QuickCheck properties\nin Haddock comments and extracts them to test modules.\nIt means that the user sees your tests in the documentation\nand knows that the examples and properties are machine-tested,\nor at least, she can run the tests herself.\n\nI found the barrier to write tests much lower\nwhen I do not need to write new test modules\nbut just add some lines to the Haddock comments.\nI do not need to think of test names or filling test data structures.\nThe test identifier is the module name and the line number and\nif a test fails I can easily jump to the failing code.\n\n\nDifferences to the original GHCi-based implementation of @doctest@:\n\nPros:\n\n* Package versions for tests are consistent with tested library\n\n* Tests run much faster, especially QuickCheck property tests\n\n* No dependency on GHCi or GHC-as-library\n\n* The tested package need not be ready for compilation.\nOur simple parser requires only clearly recognizable Haskell comments.\n\n* QuickCheck properties do not cause confusing type error messages\nwhen actually only identifiers are missing.\n\n* You can inspect extracted modules\n\n* @doctest@ collects tests from the transitive hull of imports\nof the specified modules.\nThis might help you to keep the list of modules short.\n@doctest-extract@ only processes the specified modules\nand thus allows you to focus on a module for development of tests.\n\n* With option @--verbose@ test source path and line number are formatted\nsuch that Emacs allows you to click and jump to the test definition.\n\n* Report success only of real tests.\n@doctest@ reports successful imports and\ndefinition of helper types and functions as successful tests.\nThis makes it hard to monitor the number of real tests,\ne.g. whether some tests have been dropped by accident.\n\nCons:\n\n* Cannot test for output of IO functions\nor error messages from partial functions.\n\n* All free variables in QuickCheck properties\nmust be all-quantified using lambda.\n(Could be even seen as an advantage for the reader of your doctests.)\n\n* No support for a single-line 'let' (as in a 'do'-block) as an example.\n\n* The Test module does not automatically import modules\nthat the tested module imports.\nThus, you usually have to add a setup section with required imports.\n\n* You need tools additional to @Cabal@, e.g. @make@ and a @Makefile@,\nin order generate test modules.\n\nSee packages @utility-ht@, @apportionment@ or @pathtype@ for packages\nwith working setups of @doctest-extract@.\n\nAlternatives: @cabal-docspec@, @cabal-doctest@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "doctest-extract-0.1" = {
          depends = [
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }