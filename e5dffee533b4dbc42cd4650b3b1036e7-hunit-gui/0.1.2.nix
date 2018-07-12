{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hunit-gui";
          version = "0.1.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "kim_hunitgui@arlim.org";
        author = "Kim Wallmark";
        homepage = "http://patch-tag.com/r/kwallmar/hunit_gui/home";
        url = "";
        synopsis = "A GUI testrunner for HUnit";
        description = "hunit-gui is a graphical front-end for HUnit.  It provides a test\ncontroller you can use in place of runTestTT or runTestText, as well\nas an optional cleanup step.";
        buildType = "Custom";
      };
      components = {
        "hunit-gui" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.HUnit
            hsPkgs.gtk
            hsPkgs.cairo
          ];
        };
        exes = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.HUnit
              hsPkgs.gtk
              hsPkgs.cairo
            ];
          };
        };
      };
    }