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
      specVersion = "1.6";
      identifier = { name = "shelltestrunner"; version = "1.3.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://joyful.com/shelltestrunner";
      url = "";
      synopsis = "A tool for testing command-line programs.";
      description = "shelltestrunner is a cross-platform tool for testing command-line\nprograms (or arbitrary shell commands.)  It reads simple declarative tests\nspecifying a command, some input, and the expected output, error output\nand exit status.  Tests can be run selectively, in parallel, with a\ntimeout, in color, and/or with differences highlighted.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shelltest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-file-th" or (errorHandler.buildDepError "cabal-file-th"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            ];
          buildable = true;
          };
        };
      };
    }