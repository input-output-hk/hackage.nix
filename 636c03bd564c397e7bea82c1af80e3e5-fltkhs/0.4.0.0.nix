{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      fastcompile = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20";
        identifier = {
          name = "fltkhs";
          version = "0.4.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "aditya.siram@gmail.com";
        author = "Aditya Siram";
        homepage = "http://github.com/deech/fltkhs";
        url = "";
        synopsis = "FLTK bindings";
        description = "Low level bindings for the FLTK GUI toolkit.";
        buildType = "Custom";
      };
      components = {
        fltkhs = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
        exes = {
          fltkhs-fluidtohs = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.fltkhs
              hsPkgs.parsec
              hsPkgs.directory
              hsPkgs.mtl
            ];
          };
          fltkhs-pack = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.fltkhs
            ];
          };
          fltkhs-tile = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.fltkhs
            ];
          };
          fltkhs-nativefilechooser-simple-app = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.fltkhs
            ];
          };
          fltkhs-table-as-container = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
          fltkhs-texteditor-simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
          fltkhs-textdisplay-with-colors = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
          fltkhs-doublebuffer = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
          fltkhs-make-tree = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
          fltkhs-tree-simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
          fltkhs-table-spreadsheet-with-keyboard-nav = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
          fltkhs-test_call = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
          fltkhs-buttons = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
          fltkhs-table-simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
          fltkhs-table-sort = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
              hsPkgs.process
            ];
          };
          fltkhs-arc = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
            ];
          };
          fltkhs-bitmap = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
              hsPkgs.bytestring
            ];
          };
          fltkhs-boxtype = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
              hsPkgs.bytestring
            ];
          };
          fltkhs-browser = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
              hsPkgs.bytestring
            ];
          };
          fltkhs-clock = {
            depends  = [
              hsPkgs.base
              hsPkgs.fltkhs
              hsPkgs.bytestring
            ];
          };
        };
      };
    }