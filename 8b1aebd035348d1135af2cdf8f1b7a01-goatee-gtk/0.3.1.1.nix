{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "goatee-gtk";
          version = "0.3.1.1";
        };
        license = "AGPL-3.0-only";
        copyright = "Copyright 2014-2015 Bryan Gardiner";
        maintainer = "Bryan Gardiner <bog@khumba.net>";
        author = "Bryan Gardiner <bog@khumba.net>";
        homepage = "http://khumba.net/projects/goatee";
        url = "";
        synopsis = "A monadic take on a 2,500-year-old board game - GTK+ UI.";
        description = "Goatee is a Go library and game editor, written in Haskell.  It provides a\nGUI for recording, studying, and editing game records.  Underneath this is a\nportable library for manipulating SGF files to build UIs and tools.  Goatee\naims to be full-featured by supporting all of the SGF spec and allowing for\nfull and easy customization of the game records you create.\n\nThis package is the GTK+ UI.";
        buildType = "Simple";
      };
      components = {
        goatee-gtk = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.glib
            hsPkgs.gtk
            hsPkgs.goatee
            hsPkgs.mtl
            hsPkgs.parsec
          ];
        };
        exes = {
          goatee-gtk = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.goatee-gtk
            ];
          };
        };
        tests = {
          test-goatee-gtk = {
            depends  = [
              hsPkgs.base
              hsPkgs.goatee-gtk
              hsPkgs.HUnit
            ];
          };
        };
      };
    }