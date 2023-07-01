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
      identifier = { name = "shelltestrunner"; version = "1.9"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "https://github.com/simonmichael/shelltestrunner";
      url = "";
      synopsis = "Easy, repeatable testing of CLI programs/commands";
      description = "shelltestrunner (executable: shelltest) is a portable\ncommand-line tool for testing command-line programs, or general shell\ncommands, released under GPLv3+.  It reads simple test specifications\ndefining a command to run, some input, and the expected output,\nstderr, and exit status.  It can run tests in parallel, selectively,\nwith a timeout, in color, etc.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shelltest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }