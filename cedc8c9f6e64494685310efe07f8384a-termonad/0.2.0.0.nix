{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.12";
      identifier = {
        name = "termonad";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/termonad";
      url = "";
      synopsis = "Terminal emulator configurable in Haskell";
      description = "Please see <https://github.com/cdepillabout/termonad#readme README.md>.";
      buildType = "Custom";
    };
    components = {
      "termonad" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.colour)
          (hsPkgs.constraints)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          (hsPkgs.filepath)
          (hsPkgs.gi-gdk)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gtk)
          (hsPkgs.gi-pango)
          (hsPkgs.gi-vte)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.lens)
          (hsPkgs.pretty-simple)
          (hsPkgs.QuickCheck)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-html-qq)
        ];
        pkgconfig = [
          (pkgconfPkgs.gtk+-3.0)
        ];
      };
      exes = {
        "termonad" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.termonad)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
          ];
        };
        "termonad-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.lens)
            (hsPkgs.termonad)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
          ];
        };
      };
    };
  }