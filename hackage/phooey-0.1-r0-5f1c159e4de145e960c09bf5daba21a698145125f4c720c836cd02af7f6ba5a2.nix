{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "phooey"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/Phooey";
      url = "";
      synopsis = "Functional user interfaces";
      description = "Phooey is a library for functional UIs.\n\nIf you just want to /use/ Phooey, see the main module below\n(\"Graphics.UI.Phooey\").  The other modules (@UI.Graphics.Phooey.*@) are\nuseful for understanding the implementation and adding new features.\n\nTry out the examples in @src\\/Examples.hs@.\n\nSee also\n\n* The project wiki page <http://haskell.org/haskellwiki/phooey>\n\n* Use of Phooey for composable interfaces in the TV library:\n<http://haskell.org/haskellwiki/TV>\n\nThis page and the module documentation pages have links to colorized\nsource code and to wiki pages where you can read and contribute /user\ncomments/.  Enjoy!\n\n&#169; 2006 by Conal Elliott; BSD3 license.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.arrows)
          (hsPkgs.wx)
          (hsPkgs.wxcore)
          ];
        };
      };
    }