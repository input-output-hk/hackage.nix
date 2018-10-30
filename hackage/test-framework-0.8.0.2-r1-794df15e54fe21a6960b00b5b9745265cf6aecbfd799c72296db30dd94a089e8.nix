{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "test-framework";
        version = "0.8.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Libraries List <libraries@haskell.org>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "https://batterseapower.github.io/test-framework/";
      url = "";
      synopsis = "Framework for running and organising tests, with HUnit and QuickCheck support";
      description = "Allows tests such as QuickCheck properties and HUnit test cases to be assembled into test groups, run in\nparallel (but reported in deterministic order, to aid diff interpretation) and filtered and controlled by\ncommand line options. All of this comes with colored test output, progress reporting and test statistics output.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.regex-posix)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.xml)
          (hsPkgs.hostname)
        ];
      };
      exes = {
        "test-framework-tests" = {
          depends  = pkgs.lib.optionals (!(!flags.tests)) [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.ansi-terminal)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.regex-posix)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.xml)
            (hsPkgs.hostname)
            (hsPkgs.libxml)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }