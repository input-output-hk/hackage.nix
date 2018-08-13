{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "shelltestrunner";
        version = "1.9";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Diff)
            (hsPkgs.filemanip)
            (hsPkgs.HUnit)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }