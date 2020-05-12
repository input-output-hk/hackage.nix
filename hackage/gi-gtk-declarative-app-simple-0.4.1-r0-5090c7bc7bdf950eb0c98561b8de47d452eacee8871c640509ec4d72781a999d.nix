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
      identifier = {
        name = "gi-gtk-declarative-app-simple";
        version = "0.4.1";
        };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "https://owickstrom.github.io/gi-gtk-declarative/";
      url = "";
      synopsis = "Declarative GTK+ programming in Haskell in the style of Pux.";
      description = "Experimental application architecture in the style of\nPureScript Pux, built on top of gi-gtk-declarative.\nSee [the project website](https://owickstrom.github.io/gi-gtk-declarative/)\nfor user guides and more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."gi-gobject" or (errorHandler.buildDepError "gi-gobject"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          (hsPkgs."gi-gdk" or (errorHandler.buildDepError "gi-gdk"))
          (hsPkgs."haskell-gi" or (errorHandler.buildDepError "haskell-gi"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."haskell-gi-overloading" or (errorHandler.buildDepError "haskell-gi-overloading"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."gi-gtk-declarative" or (errorHandler.buildDepError "gi-gtk-declarative"))
          ];
        buildable = true;
        };
      };
    }