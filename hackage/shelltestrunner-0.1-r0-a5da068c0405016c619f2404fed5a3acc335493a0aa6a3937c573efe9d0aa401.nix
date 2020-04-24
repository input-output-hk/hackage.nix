{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "shelltestrunner"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://joyful.com/darcsweb/darcsweb.cgi?r=shelltestrunner";
      url = "";
      synopsis = "A handy tool for testing command-line programs.";
      description = "Run a given program through \"shell\" tests specifed by\none or more test files, each of which specifies:\ncommand-line arguments, input, expected output,\nexpected stderr output, and expected exit code.  This\nwas extracted from the hledger project, and inspired\nby the tests in John Wiegley's ledger project.\nThis uses test-framework's test runner.  Output order\nis currently a bit mixed up. Any command-line options\nare passed through to the test-framework runner, but\nthey must not contain spaces, so use eg -tpattern not\n-t pattern. You may be able to get a big speedup by\nrunning tests in parallel: try -j8.\nUsage:\n\$ shelltestrunner [testrunneropts] executable testfile1 [testfile2 ...]\nTest file format:\n-opt1 -opt2 arg1 arg2\n<<<\n0 or more lines of input\n>>>\n0 or more lines of expected output\n>>>2\n0 or more lines of expected error output\n<<<expected numeric exit code>>>\nLines whose first non-whitespace character is ; are\nignored, mostly.  The first line is the command line,\nto be appended to the executable name.  All remaining\nfields are optional; when omitted they are assumed\nto be \"\", \"\", \"\", and 0 respectively.";
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
            ];
          buildable = true;
          };
        };
      };
    }