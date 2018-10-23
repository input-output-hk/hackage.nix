{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gi-gtk-declarative";
        version = "0.1.0";
      };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "";
      url = "";
      synopsis = "Declarative GTK+ programming in Haskell";
      description = "A declarative programming model for GTK+ user\ninterfaces, implementing support for various widgets\nand generalized patching. This library aims to extend the\ngi-gtk library as transparently as possible, and to be\na reusable library for multiple application architectures\nand styles.\nSee [the project README](https://github.com/owickstrom/gi-gtk-declarative#readme)\nfor more information.";
      buildType = "Simple";
    };
    components = {
      "gi-gtk-declarative" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-gtk)
          (hsPkgs.haskell-gi)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi-overloading)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }