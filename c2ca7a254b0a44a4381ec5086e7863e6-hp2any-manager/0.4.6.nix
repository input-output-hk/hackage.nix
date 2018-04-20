{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hp2any-manager";
          version = "0.4.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2013, Patai Gergely";
        maintainer = "Patai Gergely (patai.gergely@gmail.com)";
        author = "Patai Gergely";
        homepage = "http://www.haskell.org/haskellwiki/Hp2any";
        url = "";
        synopsis = "A utility to visualise and compare heap profiles.";
        description = "This is a program that can display several heap profiles at the same\ntime in the style of a tiling window manager.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hp2any-manager = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.glib
              hsPkgs.gtk
              hsPkgs.gtkglext
              hsPkgs.glade
              hsPkgs.cairo
              hsPkgs.OpenGL
              hsPkgs.bytestring
              hsPkgs.hp2any-core
              hsPkgs.hp2any-graph
            ];
          };
        };
      };
    }