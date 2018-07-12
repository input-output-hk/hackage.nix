{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "TV";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/TV";
        url = "http://darcs.haskell.org/packages/TV";
        synopsis = "Tangible Values -- composable interfaces";
        description = "TV is a library for composing /tangible values/ (\\\"TVs\\\"), i.e., values\nthat carry along external interfaces.  Values and interfaces are\n/combined and separable/, which makes TVs ready to use and to reuse.\n\nIf you just want to /use/ TV, see the main module below\n(\"Interface.TV\").  The other modules (@UI.Graphics.TV.*@) are useful\nfor understanding the implementation and adding new features.\n\nTry out the examples in @src\\/Examples.hs@.\n\nFor more information, including examples, please see the project wiki\npage <http://haskell.org/haskellwiki/TV>\n\nThis page and the module documentation pages have links to colorized\nsource code and to wiki pages where you can read and contribute /user\ncomments/.  Enjoy!\n\n&#169; 2007 by Conal Elliott; BSD3 license.";
        buildType = "Custom";
      };
      components = {
        "TV" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.phooey
            hsPkgs.DeepArrow
          ];
        };
      };
    }