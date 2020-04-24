{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gi-gtk-hs"; version = "0.3.3.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
          (hsPkgs."gi-glib" or ((hsPkgs.pkgs-errors).buildDepError "gi-glib"))
          (hsPkgs."gi-gobject" or ((hsPkgs.pkgs-errors).buildDepError "gi-gobject"))
          (hsPkgs."gi-gdk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdk"))
          (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
          (hsPkgs."gi-gdkpixbuf" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdkpixbuf"))
          ];
        buildable = true;
        };
      };
    }