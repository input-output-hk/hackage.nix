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
      specVersion = "1.10";
      identifier = { name = "movie-monad"; version = "0.0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2017 David Lettier";
      maintainer = "Lettier";
      author = "Lettier";
      homepage = "https://github.com/lettier/movie-monad";
      url = "";
      synopsis = "Plays videos using GStreamer and GTK+.";
      description = "A free and simple to use video player made with Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "movie-monad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskell-gi" or (errorHandler.buildDepError "haskell-gi"))
            (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
            (hsPkgs."haskell-gi-overloading" or (errorHandler.buildDepError "haskell-gi-overloading"))
            (hsPkgs."gi-gobject" or (errorHandler.buildDepError "gi-gobject"))
            (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
            (hsPkgs."gi-gdk" or (errorHandler.buildDepError "gi-gdk"))
            (hsPkgs."gi-gdkpixbuf" or (errorHandler.buildDepError "gi-gdkpixbuf"))
            (hsPkgs."gi-gst" or (errorHandler.buildDepError "gi-gst"))
            (hsPkgs."gi-gstvideo" or (errorHandler.buildDepError "gi-gstvideo"))
            (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          ];
          buildable = true;
        };
      };
    };
  }