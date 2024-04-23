{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gtk2hs-cast-glade"; version = "0.10.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2009 Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
      maintainer = "Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
      author = "Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
      homepage = "";
      url = "";
      synopsis = "A type class for cast functions of Gtk2hs: glade package";
      description = "This package contains a type class called Cast with a function cast, that is a\nwrapper for all the castTo* functions of gtk2hs.  It makes it easier to write\nother functions that require a castTo* as a parameter, like xmlGetWidget from\nglade.  The main utility of these packages is to use xmlGetWidgetCast, a\nversion of xmlGetWidget defined in gtk2hs-cast-glade, which has the type:\nxmlGetWidgetCast :: (Cast widget, WidgetClass widget) => GladeXML -> String ->\nIO widget.\n\nThis is the glade package of gtk2hs-cast, which contains the function\nxmlGetWidgetCast.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."gtk2hs-cast-glib" or (errorHandler.buildDepError "gtk2hs-cast-glib"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }