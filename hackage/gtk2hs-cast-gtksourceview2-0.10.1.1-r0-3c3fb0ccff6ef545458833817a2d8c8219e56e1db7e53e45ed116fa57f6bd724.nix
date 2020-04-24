{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gtk2hs-cast-gtksourceview2";
        version = "0.10.1.1";
        };
      license = "LicenseRef-OtherLicense";
      copyright = "2009 Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
      maintainer = "Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
      author = "Marco Túlio Gontijo e Silva <marcot@holoscopio.com>";
      homepage = "";
      url = "";
      synopsis = "A type class for cast functions of Gtk2hs: gtksourceview2 package";
      description = "This package contains a type class called Cast with a function cast, that is a\nwrapper for all the castTo* functions of gtk2hs.  It makes it easier to write\nother functions that require a castTo* as a parameter, like xmlGetWidget from\nglade.\n\nThis is the gnome package of gtk2hs-cast.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
          (hsPkgs."gtksourceview2" or ((hsPkgs.pkgs-errors).buildDepError "gtksourceview2"))
          (hsPkgs."gtk2hs-cast-glib" or ((hsPkgs.pkgs-errors).buildDepError "gtk2hs-cast-glib"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }