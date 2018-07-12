{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "goatee";
          version = "0.1.0";
        };
        license = "AGPL-3.0-only";
        copyright = "Copyright 2014 Bryan Gardiner";
        maintainer = "Bryan Gardiner <bog@khumba.net>";
        author = "Bryan Gardiner <bog@khumba.net>";
        homepage = "http://khumba.net/projects/goatee";
        url = "";
        synopsis = "A monadic take on a 2,500-year-old board game - library.";
        description = "Goatee is a Go library and game editor, written in Haskell.  It provides a GUI\nfor recording, studying, and editing game records.  Underneath this is a\nportable library for manipulating SGF files, to build UIs and tools.\n\nGoatee, the library and GUI, aims to be full-featured, supporting all of the SGF\nspec and allowing for full customization of the game records you create.\nCurrently it is in an alpha stage, supporting basic game viewing and editing.\n\nThis package is the shared library.";
        buildType = "Simple";
      };
      components = {
        "goatee" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "test-goatee" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.goatee
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }