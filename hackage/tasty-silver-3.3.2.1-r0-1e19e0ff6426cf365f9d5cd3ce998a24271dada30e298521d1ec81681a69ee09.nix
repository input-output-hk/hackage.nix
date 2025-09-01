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
      specVersion = "1.18";
      identifier = { name = "tasty-silver"; version = "3.3.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Andreas Abel, Philipp Hausmann";
      author = "Philipp Hausmann, Andreas Abel, Roman Cheplyaka, and others";
      homepage = "https://github.com/phile314/tasty-silver";
      url = "";
      synopsis = "A fancy test runner, including support for golden tests.";
      description = "This package provides a fancy test runner and support for «golden testing».\n\nA golden test is an IO action that writes its result to a file.\nTo pass the test, this output file should be identical to the corresponding\n«golden» file, which contains the correct result for the test.\n\nThe test runner allows filtering tests using regexes, and to interactively\ninspect the result of golden tests.\n\nThis package is a heavily extended fork of tasty-golden.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-silver" or (errorHandler.buildDepError "tasty-silver"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          buildable = true;
        };
      };
    };
  }