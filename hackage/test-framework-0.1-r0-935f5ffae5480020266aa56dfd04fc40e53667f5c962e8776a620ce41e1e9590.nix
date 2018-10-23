{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = true;
      tests = false;
      example = false;
      hunit = true;
      quickcheck = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "test-framework";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "http://github.com/batterseapower/test-framework";
      url = "";
      synopsis = "Framework for running and organising tests, with HUnit and QuickCheck support";
      description = "Allows QuickCheck properties and HUnit test cases to be assembled into test groups, run in parallel (but reported\nin deterministic order, to aid diff interpretation) and filtered and controlled by command line options.\nAll of this comes with colored test output, progress reporting and test statistics output.";
      buildType = "Simple";
    };
    components = {
      "test-framework" = {
        depends  = (([
          (hsPkgs.ansi-terminal)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.regex-posix)
        ] ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs.QuickCheck)) ++ pkgs.lib.optional (flags.hunit) (hsPkgs.HUnit)) ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.containers)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "test-framework-tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.ansi-terminal)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.regex-posix)
          ] ++ (if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.random)
              (hsPkgs.containers)
            ]
            else [ (hsPkgs.base) ]);
        };
        "test-framework-example" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.ansi-terminal)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.regex-posix)
          ] ++ (if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.random)
              (hsPkgs.containers)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }