{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "shelltestrunner";
          version = "0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://joyful.com/darcsweb/darcsweb.cgi?r=shelltestrunner";
        url = "";
        synopsis = "A tool for testing command-line programs.";
        description = "\nRun a given program through \"shell\" tests specifed by one or more test\nfiles, each of which can specify: command-line arguments, input, expected\noutput, expected stderr output, and expected exit code.  This was\nextracted from the hledger project, inspired by the tests in John\nWiegley's ledger project, and uses test-framework's test runner.\n\nUsage:\n\n> shelltestrunner [opts] executable testfile1 [testfile2 ...] [-- <test-framework runner opts>]\n\nYou can pass options through to test-framework's runner; they must go\nafter -- at the end. You may be able to get a big speedup by running\ntests in parallel: try -- -j8.\n\nTest file format:\n\n> # 0 or more comment lines beginning with #\n> -opt1 -opt2 arg1 arg2 # command line args, executable will be prepended\n> <<<\n> 0 or more lines of input\n> >>> [/regexp/]\n> [..or 0 or more lines of expected output]\n> >>>2 [/regexp/]\n> [..or 0 or more lines of expected error output]\n> >>>= [/regexp/]\n> [..or expected numeric exit code]\n\nThe expected fields can also have a regular expression match expression\nfollowing the delimiter on the same line, with no other data lines, in\nwhich case the test passes if the output is matched by the regexp. The\nregexp is enclosed in forward slashess. A ! preceding the expression\nnegates the match. For example, to check that stdout does not contain\n\"axe\":\n\n> >>> !/axe/\n\nApart from the command line, all fields are optional. Only fields\nspecified in the test will be tested, unless you use the\n-i/--implicit-tests flag, which will test for empty stdout, empty stderr,\nor 0 exit code whenever fields are omitted.\n\nIssues:\n\n- output order is mixed up\n\n- option processing is weak\n\n- can't test input/output which does not end with newline\n\nWishlist:\n\n- configurable delimiters\n\n- multiple tests per file\n";
        buildType = "Simple";
      };
      components = {
        exes = {
          "shelltestrunner" = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.parseargs
              hsPkgs.regexpr
            ];
          };
        };
      };
    }