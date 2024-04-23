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
      specVersion = "1.12";
      identifier = { name = "teardown"; version = "0.5.0.1"; };
      license = "MIT";
      copyright = "© 2017, 2018 Roman Gonzalez";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-teardown#readme";
      url = "";
      synopsis = "Build safe and composable teardown sub-routines for resources";
      description = "The teardown library allows you to reliably execute cleanup sub-routines for\nallocated resources. When a program is initialized, it:\n\n* Ensures that teardown sub-routines are executed /exactly/ once\n\n* Ensures that if errors occur on the execution of a Teardown sub-routine, the\nerror does not propagate to others; bulkheading failure on cleanup.\n\n* Requires every sub-routine to be documented at creation time; thus helping\ntracing your application structure.\n\n* Allows tracing the teardown of your application, how is structured, how much\ntime it takes to execute, and what component (if any) failed to finalize.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      tests = {
        "teardown-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."teardown" or (errorHandler.buildDepError "teardown"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "teardown-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."teardown" or (errorHandler.buildDepError "teardown"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          buildable = true;
        };
      };
    };
  }