{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "maclight";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Tycho Andersen <tycho@tycho.ws>";
        author = "Tycho Andersen";
        homepage = "http://github.com/tych0/maclight";
        url = "";
        synopsis = "Control screen and keyboard backlights on MACs under Linux";
        description = "Maclight is both a library and a command line program for\ncontrolling the backlight on Macbooks under linux.";
        buildType = "Simple";
      };
      components = {
        maclight = {
          depends  = [
            hsPkgs.base
            hsPkgs.filemanip
            hsPkgs.filepath
            hsPkgs.parsec
            hsPkgs.strict
          ];
        };
        exes = {
          maclight = {
            depends  = [
              hsPkgs.base
              hsPkgs.filemanip
              hsPkgs.filepath
              hsPkgs.optparse-applicative
              hsPkgs.strict
              hsPkgs.maclight
            ];
          };
        };
        tests = {
          MaclightTest.hs = {
            depends  = [
              hsPkgs.base
              hsPkgs.maclight
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }