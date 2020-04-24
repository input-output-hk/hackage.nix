{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "movie-monad"; version = "0.0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 David Lettier";
      maintainer = "Lettier";
      author = "Lettier";
      homepage = "https://github.com/lettier/movie-monad";
      url = "";
      synopsis = "Plays videos using GStreamer and GTK+.";
      description = "A free and simple to use video player built with Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "movie-monad" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
            (hsPkgs."gi-gobject" or ((hsPkgs.pkgs-errors).buildDepError "gi-gobject"))
            (hsPkgs."gi-glib" or ((hsPkgs.pkgs-errors).buildDepError "gi-glib"))
            (hsPkgs."gi-gdk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdk"))
            (hsPkgs."gi-gdkpixbuf" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdkpixbuf"))
            (hsPkgs."gi-gst" or ((hsPkgs.pkgs-errors).buildDepError "gi-gst"))
            (hsPkgs."gi-gstvideo" or ((hsPkgs.pkgs-errors).buildDepError "gi-gstvideo"))
            (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
            ];
          buildable = true;
          };
        };
      };
    }