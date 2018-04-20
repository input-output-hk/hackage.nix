{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gi-gtk-hs";
          version = "0.3.6.1";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "mail@jonasplatte.de";
        author = "Jonas Platte,\nDuncan Coutts,\nAxel Simon,\nHamish Mackenzie";
        homepage = "https://github.com/haskell-gi/gi-gtk-hs";
        url = "";
        synopsis = "A wrapper for gi-gtk, adding a few more idiomatic API parts on top";
        description = "A wrapper for gi-gtk, adding a few more idiomatic API parts on top";
        buildType = "Simple";
      };
      components = {
        gi-gtk-hs = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.haskell-gi-base
            hsPkgs.gi-glib
            hsPkgs.gi-gobject
            hsPkgs.gi-gdk
            hsPkgs.gi-gtk
            hsPkgs.gi-gdkpixbuf
          ];
        };
      };
    }