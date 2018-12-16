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
      specVersion = "1.2";
      identifier = {
        name = "shelltestrunner";
        version = "0.6";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://joyful.com/darcsweb/darcsweb.cgi?r=shelltestrunner";
      url = "";
      synopsis = "A tool for testing command-line programs.";
      description = "\nRun a given program through \\\"shell\\\" tests specifed by one or more test\nfiles, where each test can specify: command-line arguments, input, expected\noutput, expected stderr output, and/or expected exit code.  This was\nextracted from the hledger project, inspired by the tests in John\nWiegley's ledger project, and uses test-framework's test runner.\n\nUsage:\n\n> shelltestrunner [opts] executable testfile1 [testfile2 ...] [-- <test-framework runner opts>]\n\nYou can pass options through to test-framework's runner; they must go\nafter -- at the end. You may be able to get a big speedup by running\ntests in parallel: try -- -j8.\n\nTest file format:\n\nA test file contains 0 or more shell tests, each of which looks like this:\n\n> # 0 or more comment lines beginning with #\n> -opt1 -opt2 arg1 arg2 # one line of command line args, executable will be prepended\n> <<<\n> 0 or more lines of input\n> >>> [/regexp/]\n> [..or 0 or more lines of expected output]\n> >>>2 [/regexp/]\n> [..or 0 or more lines of expected error output]\n> >>>= [expected numeric exit code or /regexp/]\n\nEach expected field can have either a regular expression match\nexpression, in which case the test passes if the output is matched, or 0\nor more data lines, in which case the output must match these exactly.  A\n! preceding a \\/regexp\\/ negates the match. The regular expression syntax\nis that supported by the regexpr library.\n\nApart from the command line, all fields are optional. Only the fields you\nspecify will be tested, unless you use the -i/--implicit-tests flag,\nwhich adds default tests (empty stdout, empty stderr, and 0 exit code)\nfor omitted fields.\n\nIssues:\n\n- can't test input/output which does not end with newline\n\n- can't use / in regexps\n\n- option processing and --help output could be better\n\nWishlist:\n\n- configurable delimiters\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "shelltestrunner" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.parseargs)
            (hsPkgs.regexpr)
          ];
        };
      };
    };
  }