{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "shelltestrunner"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://joyful.com/darcsweb/darcsweb.cgi?r=shelltestrunner";
      url = "";
      synopsis = "A tool for testing command-line programs.";
      description = "Run a given program through \"shell\" tests specifed by\none or more test files, each of which specifies:\ncommand-line arguments, input, expected output,\nexpected stderr output, and expected exit code.  This\nwas extracted from the hledger project, and inspired\nby the tests in John Wiegley's ledger project.\nThis uses test-framework's test runner. Any command-line\noptions are passed through to the test-framework runner,\nbut they must not contain spaces, so use eg -tpattern not\n-t pattern. You may be able to get a big speedup by\nrunning tests in parallel: try -j8.\nUsage:\n\$ shelltestrunner [testrunneropts] executable testfile1 [testfile2 ...]\nTest file format:\n; 0 or more comment lines beginning with ;\n-opt1 -opt2 arg1 arg2\n<<<\n0 or more lines of input\n>>>\n0 or more lines of expected output\n>>>2\n0 or more lines of expected error output\n>>>=\nexpected numeric exit code\nInitial lines beginning with ; are ignored.  The next line\nis the command-line arguments which will be appended to\nthe executable name.  All remaining fields are optional;\nwhen omitted they are assumed to be \"\", \"\", \"\", and 0\nrespectively.\nIssues:\n- on mac, will hang if executable does not read stdin\n- output order is mixed up\n- can't test input/ouput which does not end with newline";
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
            ];
          };
        };
      };
    }