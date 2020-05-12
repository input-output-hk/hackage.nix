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
      identifier = { name = "gi-gtk-declarative"; version = "0.4.0"; };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "https://owickstrom.github.io/gi-gtk-declarative/";
      url = "";
      synopsis = "Declarative GTK+ programming in Haskell";
      description = "A declarative programming model for GTK+ user\ninterfaces, implementing support for various widgets\nand generalized patching. This library aims to extend the\ngi-gtk library as transparently as possible, and to be\na reusable library for multiple application architectures\nand styles.\nSee [the project website](https://owickstrom.github.io/gi-gtk-declarative/)\nfor user guides and more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gi-gobject" or (errorHandler.buildDepError "gi-gobject"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          (hsPkgs."haskell-gi" or (errorHandler.buildDepError "haskell-gi"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."haskell-gi-overloading" or (errorHandler.buildDepError "haskell-gi-overloading"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      benchmarks = {
        "gi-gtk-declarative-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
            (hsPkgs."gi-gdk" or (errorHandler.buildDepError "gi-gdk"))
            (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
            (hsPkgs."gi-gtk-declarative" or (errorHandler.buildDepError "gi-gtk-declarative"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }