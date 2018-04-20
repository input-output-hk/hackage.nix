{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gtk2hs-cast-gtk";
          version = "0.10.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2009 Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
        maintainer = "Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
        author = "Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
        homepage = "";
        url = "";
        synopsis = "A type class for cast functions of Gtk2hs: gtk package";
        description = "This package contains a type class called Cast with a function cast, that is a\nwrapper for all the castTo* functions of gtk2hs.  It makes it easier to write\nother functions that require a castTo* as a parameter, like xmlGetWidget from\nglade.\n\nThis is the gtk package of gtk2hs-cast.";
        buildType = "Simple";
      };
      components = {
        gtk2hs-cast-gtk = {
          depends  = [
            hsPkgs.base
            hsPkgs.hint
            hsPkgs.gtk
            hsPkgs.gtk2hs-cast-glib
            hsPkgs.template-haskell
          ];
        };
      };
    }