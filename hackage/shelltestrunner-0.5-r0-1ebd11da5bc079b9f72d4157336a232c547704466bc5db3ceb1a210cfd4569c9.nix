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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."parseargs" or (buildDepError "parseargs"))
            (hsPkgs."regexpr" or (buildDepError "regexpr"))
            ];
          };
        };
      };
    }