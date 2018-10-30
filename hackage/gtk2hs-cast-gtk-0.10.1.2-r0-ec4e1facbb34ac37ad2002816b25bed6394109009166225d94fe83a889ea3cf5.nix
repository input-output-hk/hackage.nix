{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gtk2hs-cast-gtk";
        version = "0.10.1.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2009 Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
      maintainer = "Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
      author = "Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
      homepage = "";
      url = "";
      synopsis = "A type class for cast functions of Gtk2hs: gtk package";
      description = "This package contains a type class called Cast with a function cast, that is a\nwrapper for all the castTo* functions of gtk2hs.  It makes it easier to write\nother functions that require a castTo* as a parameter, like xmlGetWidget from\nglade.  The main utility of these packages is to use xmlGetWidgetCast, a\nversion of xmlGetWidget defined in gtk2hs-cast-glade, which has the type:\nxmlGetWidgetCast :: (Cast widget, WidgetClass widget) => GladeXML -> String ->\nIO widget.\n\nThis is the gtk package of gtk2hs-cast, which contains the instances of Cast\nfor the types in the gtk package from gtk2hs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hint)
          (hsPkgs.gtk)
          (hsPkgs.gtk2hs-cast-glib)
          (hsPkgs.gtk2hs-cast-th)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }