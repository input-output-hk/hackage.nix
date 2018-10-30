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
      specVersion = "1.6";
      identifier = {
        name = "shelltestrunner";
        version = "1.3.1";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cabal-file-th)
            (hsPkgs.filemanip)
            (hsPkgs.HUnit)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.regex-tdfa)
            (hsPkgs.process)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.utf8-string)
            (hsPkgs.Diff)
          ];
        };
      };
    };
  }