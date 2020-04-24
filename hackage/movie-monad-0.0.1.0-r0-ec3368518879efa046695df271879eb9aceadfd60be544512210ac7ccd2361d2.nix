{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "movie-monad"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 David Lettier";
      maintainer = "Lettier";
      author = "Lettier";
      homepage = "https://github.com/lettier/movie-monad";
      url = "";
      synopsis = "Plays videos using GStreamer and GTK+.";
      description = "Desktop video player that uses GStreamer and GTK+.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "movie-monad" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
            (hsPkgs."gi-xlib" or ((hsPkgs.pkgs-errors).buildDepError "gi-xlib"))
            (hsPkgs."gi-gobject" or ((hsPkgs.pkgs-errors).buildDepError "gi-gobject"))
            (hsPkgs."gi-glib" or ((hsPkgs.pkgs-errors).buildDepError "gi-glib"))
            (hsPkgs."gi-gdkx11" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdkx11"))
            (hsPkgs."gi-gstvideo" or ((hsPkgs.pkgs-errors).buildDepError "gi-gstvideo"))
            (hsPkgs."gi-gdk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdk"))
            (hsPkgs."gi-gst" or ((hsPkgs.pkgs-errors).buildDepError "gi-gst"))
            (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
            ];
          buildable = true;
          };
        };
      };
    }