{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "termonad"; version = "1.1.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.adjunctions)
          (hsPkgs.classy-prelude)
          (hsPkgs.colour)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.distributive)
          (hsPkgs.dyre)
          (hsPkgs.filepath)
          (hsPkgs.focuslist)
          (hsPkgs.gi-gdk)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gtk)
          (hsPkgs.gi-pango)
          (hsPkgs.gi-vte)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.lens)
          (hsPkgs.mono-traversable)
          (hsPkgs.pretty-simple)
          (hsPkgs.QuickCheck)
          (hsPkgs.singletons)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-html-qq)
          ];
        pkgconfig = [ (pkgconfPkgs."gtk+-3.0") (pkgconfPkgs."vte-2.91") ];
        };
      exes = {
        "termonad" = { depends = [ (hsPkgs.base) (hsPkgs.termonad) ]; };
        "termonad-readme" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.markdown-unlit)
            (hsPkgs.termonad)
            (hsPkgs.colour)
            ];
          };
        "termonad-example-colour-extension" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.termonad)
            (hsPkgs.colour)
            (hsPkgs.singletons)
            ];
          };
        "termonad-example-colour-extension-solarized" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.termonad)
            (hsPkgs.colour)
            (hsPkgs.singletons)
            ];
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            ];
          };
        "termonad-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.genvalidity-containers)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.hedgehog)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.termonad)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      };
    }