{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GtkTV";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/GtkTV";
        url = "http://code.haskell.org/~conal/code/GtkTV";
        synopsis = "Gtk-based GUIs for Tangible Values";
        description = "GtkTV is a very small library that extends the TV (tangible value)\nframework with graphical user interfaces, using gtk2hs.\n\n&#169; 2007 by Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        GtkTV = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.gtk
            hsPkgs.TypeCompose
            hsPkgs.TV
          ];
        };
      };
    }