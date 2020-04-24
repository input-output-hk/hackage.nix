{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "shelltestrunner"; version = "0.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://joyful.com/darcsweb/darcsweb.cgi?r=shelltestrunner";
      url = "";
      synopsis = "A tool for testing command-line programs.";
      description = "\nRun a given program through \\\"shell\\\" tests specifed by one or more test\nfiles, each of which can specify: command-line arguments, input, expected\noutput, expected stderr output, and expected exit code.  This was\nextracted from the hledger project, inspired by the tests in John\nWiegley's ledger project, and uses test-framework's test runner.\n\nUsage:\n\n> shelltestrunner [opts] executable testfile1 [testfile2 ...] [-- <test-framework runner opts>]\n\nYou can pass options through to test-framework's runner; they must go\nafter -- at the end. You may be able to get a big speedup by running\ntests in parallel: try -- -j8.\n\nTest file format:\n\n> # 0 or more comment lines beginning with #\n> -opt1 -opt2 arg1 arg2 # command line args, executable will be prepended\n> <<<\n> 0 or more lines of input\n> >>> [/regexp/]\n> [..or 0 or more lines of expected output]\n> >>>2 [/regexp/]\n> [..or 0 or more lines of expected error output]\n> >>>= [/regexp/]\n> [..or expected numeric exit code]\n\nEach expected field can have either a regular expression match\nexpression, in which case the test passes if the output is matched, or 0\nor more data lines, in which case the output must match these exactly.  A\n! preceding a /regexp/ negates the match. The regular expression syntax\nis that supported by the regexpr library.\n\nApart from the command line, all fields are optional. Only fields\nspecified in the test will be tested, unless you use the\n-i/--implicit-tests flag, which will test for empty stdout, empty stderr,\nor 0 exit code where fields are omitted.\n\nIssues:\n\n- can't put / in a regexp\n\n- can't test input/output which does not end with newline\n\n- option processing is weak\n\nWishlist:\n\n- configurable delimiters\n\n- multiple tests per file\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shelltestrunner" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
            (hsPkgs."regexpr" or ((hsPkgs.pkgs-errors).buildDepError "regexpr"))
            ];
          buildable = true;
          };
        };
      };
    }