{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hscurses-fish-ex"; version = "1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://ui3.info/darcs/hscurses-fish-ex/";
      url = "";
      synopsis = "hscurses swimming fish example";
      description = "Simple curses aquarium written to learn about\nthe hscurses library.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hscurses-fish-ex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hscurses)
            (hsPkgs.random)
            (hsPkgs.safe)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }