{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      no-tests = false;
      demos = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "vty-ui";
          version = "1.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
        author = "Jonathan Daugherty <cygnus@foobox.com>";
        homepage = "http://jtdaugherty.github.com/vty-ui/";
        url = "";
        synopsis = "An interactive terminal user interface library for Vty";
        description = "An extensible library of user interface widgets for composing and\nlaying out Vty user interfaces.  This library provides a collection\nof widgets for building and composing interactive,\nevent-driven terminal interfaces.  This library is intended to make\nnon-trivial user interfaces easy to express and modify without\nhaving to worry about terminal size.\n\nBe sure to check out the user manual for the version you're using\nat: <http://jtdaugherty.github.com/vty-ui/>\n\nBuild with the 'demos' flag to get a set of demonstration programs\nto see some of the things the library can do!";
        buildType = "Simple";
      };
      components = {
        vty-ui = {
          depends  = [
            hsPkgs.base
            hsPkgs.vty
            hsPkgs.containers
            hsPkgs.regex-base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.unix
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.array
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        exes = {
          vty-ui-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.text
              hsPkgs.vty
              hsPkgs.vty-ui
            ];
          };
          vty-ui-collection-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.vty-ui
            ];
          };
          vty-ui-list-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.vty-ui
            ];
          };
          vty-ui-progressbar-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.vty-ui
            ];
          };
          vty-ui-complex-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.vty-ui
            ];
          };
          vty-ui-dirbrowser-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.vty
              hsPkgs.vty-ui
            ];
          };
          vty-ui-phoneinput-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.vty-ui
            ];
          };
          vty-ui-dialog-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.vty
              hsPkgs.text
              hsPkgs.vty-ui
            ];
          };
          vty-ui-edit-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.vty
              hsPkgs.vty-ui
            ];
          };
        };
      };
    }