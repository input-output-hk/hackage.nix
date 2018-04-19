{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "test-framework";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
        author = "Max Bolingbroke <batterseapower@hotmail.com>";
        homepage = "http://batterseapower.github.com/test-framework/";
        url = "";
        synopsis = "Framework for running and organising tests, with HUnit and QuickCheck support";
        description = "Allows tests such as QuickCheck properties and HUnit test cases to be assembled into test groups, run in\nparallel (but reported in deterministic order, to aid diff interpretation) and filtered and controlled by\ncommand line options. All of this comes with colored test output, progress reporting and test statistics output.";
        buildType = "Simple";
      };
      components = {
        test-framework = {
          depends  = [
            hsPkgs.ansi-terminal
            hsPkgs.ansi-wl-pprint
            hsPkgs.regex-posix
            hsPkgs.extensible-exceptions
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.xml
            hsPkgs.hostname
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.containers
            ]
            else [ hsPkgs.base ]);
        };
        exes = {
          test-framework-tests = {
            depends  = optionals (!(!_flags.tests)) ([
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.ansi-terminal
              hsPkgs.ansi-wl-pprint
              hsPkgs.regex-posix
              hsPkgs.extensible-exceptions
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.xml
              hsPkgs.hostname
              hsPkgs.libxml
              hsPkgs.bytestring
            ] ++ (if _flags.splitbase
              then [
                hsPkgs.base
                hsPkgs.random
                hsPkgs.containers
              ]
              else [ hsPkgs.base ]));
          };
        };
      };
    }