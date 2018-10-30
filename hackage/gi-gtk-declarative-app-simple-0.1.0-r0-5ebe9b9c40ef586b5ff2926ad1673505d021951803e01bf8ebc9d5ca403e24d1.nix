{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gi-gtk-declarative-app-simple";
        version = "0.1.0";
      };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "";
      url = "";
      synopsis = "Declarative GTK+ programming in Haskell in the style of\n[Pux](https://github.com/alexmingoia/purescript-pux).";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gtk)
          (hsPkgs.gi-gtk-declarative)
          (hsPkgs.gi-gdk)
          (hsPkgs.haskell-gi)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi-overloading)
          (hsPkgs.pipes)
          (hsPkgs.pipes-concurrency)
          (hsPkgs.text)
        ];
      };
    };
  }