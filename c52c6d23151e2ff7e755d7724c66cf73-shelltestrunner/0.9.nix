{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "shelltestrunner";
          version = "0.9";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://joyful.com/darcsweb/darcsweb.cgi?r=shelltestrunner";
        url = "";
        synopsis = "A tool for testing command-line programs.";
        description = "This tool aims to help with repeatable testing of a command-line program\n(or any shell command), via declarative \\\"shell tests\\\" which are easier\nto write than procedural shell scripts.  Tests are defined in one or more\ntest files, which typically have the .test suffix and live in a tests/\nsubdirectory. Each test specifies a command line, optional standard input,\nand expected standard output, error output and/or exit status.  Tests can\nbe run in parallel for greater speed. shelltestrunner was inspired by the\ntests in John Wiegley's ledger project.\n\nCompatibility: should work on microsoft windows as well as unix; not well\ntested on windows. Should build with ghc 6.10; for unicode support,\nrequires ghc 6.12.\n\nUsage:\n\n>     shelltest [FLAG] [TESTFILES|TESTDIRS]\n>\n>       -? --help[=FORMAT]           Show usage information (optional format)\n>       -V --version                 Show version information\n>       -v --verbose                 Higher verbosity\n>       -q --quiet                   Lower verbosity\n>       -d --debug                   show debug messages\n>          --debug-parse             show parsing debug messages and stop\n>       -c --color                   display with ANSI color codes\n>          --execdir                 run tests in same directory as test file\n>          --extension=EXT           extension of test files when dirs specified (default=.test)\n>       -i --implicit=none|exit|all  provide implicit tests (default=exit)\n>       -w --with=EXECUTABLE         alternate executable, replaces the first word of test commands\n>          =OTHER FLAGS              any other flags are passed to test runner\n>\n>     A test file contains one or more shell tests, which look like this:\n>\n>      # optional comment lines\n>      a one-line shell command to be tested\n>      <<<\n>      stdin lines\n>      >>> [/regexp to match in stdout/]\n>      [or expected stdout lines\n>      >>>2 [/regexp to match in stderr/]\n>      [or expected stderr lines]\n>      >>>= expected exit status or /regexp/\n>\n>     The command line is required; all other fields are optional.\n>     The expected stdout (>>>) and expected stderr (>>>2) fields can have either\n>     a regular expression match pattern, in which case the test passes if the\n>     output is matched, or 0 or more data lines, in which case the output\n>     must match these exactly. The expected exit status (>>>=) field can have\n>     either a numeric exit code or a /regexp/. A ! preceding a /regexp/ or exit\n>     code negates the match. The regular expression syntax is that of the\n>     pcre-light library with the dotall flag.\n>\n>     By default there is an implicit test for exit status=0, but no implicit test\n>     for stdout or stderr.  You can change this with -i/--implicit-tests.\n>\n>     The command runs in your current directory unless you use --execdir.\n>     You can use --with/-w to replace the first word of command lines\n>     (everything up to the first space) with something else, eg to test a\n>     different version of your program. To prevent this, start the command line\n>     with a space.\n>\n>     Any unrecognised options will be passed through to test-framework's runner.\n>     You may be able to get a big speedup by running tests in parallel: try -j8.";
        buildType = "Simple";
      };
      components = {
        exes = {
          shelltest = {
            depends  = [
              hsPkgs.base
              hsPkgs.FileManipCompat
              hsPkgs.HUnit
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.parsec
              hsPkgs.regex-tdfa
              hsPkgs.process
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }