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
      identifier = { name = "tasty-rerun"; version = "1.1.9"; };
      license = "BSD-3-Clause";
      copyright = "Oliver Charles (c) 2014";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/tasty-rerun";
      url = "";
      synopsis = "Run tests by filtering the test tree depending on the result of previous test\nruns";
      description = "This ingredient adds the ability to run tests by first filtering the test tree\nbased on the result of a previous test run. For example, you can use this to\nrun only those tests that failed in the last run, or to run only tests that\nhave been added since tests were last ran.\n\nThis ingredient is specifically an ingredient *transformer* - given a list of\n'Tasty.Ingredient's, 'rerunningTests' adds the ability for all of these\ningredients to run against a filtered test tree. This transformer can be\napplied as follows:\n\n> import Test.Tasty\n> import Test.Tasty.Runners\n>\n> main :: IO ()\n> main =\n>   defaultMainWithIngredients\n>     [ rerunningTests [ listingTests, consoleTestReporter ] ]\n>     tests\n>\n> tests :: TestTree\n> tests = undefined\n\nThis ingredient adds three command line parameters:\n\n[@--rerun-update@] If specified the results of this test run will be saved to\nthe log file at @--rerun-log-file@. If the ingredient does not execute tests\n(for example, @--list-tests@ is used) then the log file will not be\nupdated. This option is not enabled by default.  This option does not require\na value.\n\n[@--rerun-log-file@] The path to the log file to read previous test\ninformation from, and where to write new information to (if @--rerun-update@\nis specified). This option defaults to @.tasty-rerun-log@.\n\n[@--rerun-filter@] Which filters to apply to the 'Tasty.TestTree' based on\nprevious test runs. The value of this option is a comma separated list of the\nfollowing options:\n\n* @failures@: Only run tests that failed on the previous run.\n\n* @exceptions@: Only run tests that threw an exception on the previous run.\n\n* @new@: Only run tests that are new since the previous test run.\n\n* @successful@: Only run tests that were successful in the previous run.\n\nMultiple options can be combined and will be taken under disjunction - so\n@--rerun-filter=failures,exceptions@ will run only tests that failed *or*\nthrew an exception on the last run.\n\nDefaults to all filters, which means all tests will be ran.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."reducers" or (errorHandler.buildDepError "reducers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }