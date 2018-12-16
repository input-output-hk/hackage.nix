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
      specVersion = "0";
      identifier = {
        name = "GuiTV";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/GuiTV";
      url = "http://darcs.haskell.org/packages/GuiTV";
      synopsis = "GUIs for Tangible Values";
      description = "GuiTV is a very small library that extends the TV (tangible value)\nframework with graphical user interfaces, using Phooey.  (See\n<http://haskell.org/haskellwiki/TV> and\n<http://haskell.org/haskellwiki/Phooey>.)  The functionality was part of\nthe TV package up to version 0.1.1.  I moved it out to eliminate the\ndependency of core TV on Phooey and hence on wxHaskell, as the latter\ncan be difficult to install.\n\nTry out the examples in @src\\/Examples.hs@.\n\nFor more information, including examples, please see the project wiki\npage <http://haskell.org/haskellwiki/GuiTV>\n\nThis page and the module documentation pages have links to colorized\nsource code and to wiki pages where you can read and contribute /user\ncomments/.  Enjoy!\n\n&#169; 2007 by Conal Elliott; BSD3 license.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.DeepArrow)
          (hsPkgs.phooey)
          (hsPkgs.TV)
        ];
      };
    };
  }