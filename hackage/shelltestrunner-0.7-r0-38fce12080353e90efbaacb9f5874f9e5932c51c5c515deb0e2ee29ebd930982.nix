let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "shelltestrunner"; version = "0.7"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://joyful.com/darcsweb/darcsweb.cgi?r=shelltestrunner";
      url = "";
      synopsis = "A tool for testing command-line programs.";
      description = "\nRun a command-line program through \\\"shell tests\\\" defined in one or\nmore test files. Each test specifies command-line arguments, some input,\nand expected output, stderr output and/or exit status.\nWe use test-framework's test runner, so can run tests in parallel.\nshelltestrunner was inspired by the tests in John Wiegley's ledger project.\n\nUsage:\n\n> shelltestrunner [FLAGS] EXECUTABLE [TESTFILES ...]\n>\n>   -? --help[=FORMAT]           Show usage information (optional format)\n>   -V --version                 Show version information\n>   -v --verbose                 Higher verbosity\n>   -q --quiet                   Lower verbosity\n>   -d --debug                   show debug messages\n>      --debug-parse             show parsing debug messages and stop\n>   -i --implicit=none|exit|all  provide implicit tests (default=exit)\n\nAny unrecognised options will be passed through to test-framework's runner.\nYou may be able to get a big speedup by running tests in parallel: try -j16.\n\nA test file contains one or more shell tests, each of which looks like this:\n\n> # optional comment lines beginning with #\n> -opt1 -opt2 arg1 arg2 # one line of command line args, executable will be prepended\n> <<<\n> 0 or more lines of input\n> >>> [/regexp/] [optional comment beginning with #]\n> [..or 0 or more lines of expected output]\n> >>>2 [/regexp/] [optional comment]\n> [..or 0 or more lines of expected error output]\n> >>>= [expected exit status or /regexp/] [optional comment]\n> # optional comment lines\n\nThe expected output and expected error output fields can have either a\nregular expression match expression, in which case the test passes if the\noutput is matched, or 0 or more following data lines, in which case the\noutput must match these exactly. The expected exit status field can have\neither a numeric exit code or a regular expression match expression. A !\npreceding a an exit code or \\/regexp\\/ negates the match. The regular\nexpression syntax is that of the pcre-light library with the dotall flag.\n\nThe command line args field is required, all others are optional.  By\ndefault there is an implicit test for exit status = 0, but no implicit\ntest for stdout or stderr.  You can change this with the\n-i/--implicit-tests flag.\n\nSome issues to be aware of:\n\n- uncompiled haskell scripts can't be tested due to http://hackage.haskell.org/trac/ghc/ticket/3890\n\n- unparseable test files and uncompilable regexps are counted as test failures\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shelltestrunner" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."pcre-light" or (buildDepError "pcre-light"))
            ];
          buildable = true;
          };
        };
      };
    }