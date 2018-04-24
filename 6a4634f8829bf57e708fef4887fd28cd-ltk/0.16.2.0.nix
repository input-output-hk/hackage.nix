{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      gdk-318 = true;
      gtk-318 = true;
      gtk-320 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ltk";
          version = "0.16.2.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Juergen \"jutaro\" Nicklisch-Franken";
        maintainer = "maintainer@leksah.org";
        author = "Juergen \"jutaro\" Nicklisch-Franken";
        homepage = "http://www.leksah.org";
        url = "http://code.haskell.org/ltk";
        synopsis = "Leksah tool kit";
        description = "UI Framework used by leksah";
        buildType = "Simple";
      };
      components = {
        ltk = {
          depends  = [
            hsPkgs.Cabal
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.transformers
            hsPkgs.haskell-gi-base
            hsPkgs.gi-glib
            hsPkgs.gi-gobject
            hsPkgs.gi-cairo
            hsPkgs.gi-gdk
            hsPkgs.gi-gtk
            hsPkgs.gi-gtk-hs
            hsPkgs.haskell-gi-overloading
          ] ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) hsPkgs.ghc;
          pkgconfig = ([
            pkgconfPkgs."gdk-3.0"
          ] ++ (if _flags.gtk-318
            then [ pkgconfPkgs."gtk+-3.0" ]
            else [
              pkgconfPkgs."gdk-3.0"
            ])) ++ (if _flags.gtk-320
            then [ pkgconfPkgs."gtk+-3.0" ]
            else [ pkgconfPkgs."gdk-3.0" ]);
        };
      };
    }