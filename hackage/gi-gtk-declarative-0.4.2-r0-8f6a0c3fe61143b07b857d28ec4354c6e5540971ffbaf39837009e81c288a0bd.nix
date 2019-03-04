{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gi-gtk-declarative"; version = "0.4.2"; };
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
          (hsPkgs.base)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gtk)
          (hsPkgs.haskell-gi)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi-overloading)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      benchmarks = {
        "gi-gtk-declarative-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.gi-glib)
            (hsPkgs.gi-gdk)
            (hsPkgs.gi-gtk)
            (hsPkgs.gi-gtk-declarative)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }