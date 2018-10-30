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
      specVersion = "1.2";
      identifier = {
        name = "GtkTV";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, 2010 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/GtkTV";
      url = "http://code.haskell.org/~conal/code/GtkTV";
      synopsis = "Gtk-based GUIs for Tangible Values";
      description = "GtkTV is a very small library that extends the TV (tangible value)\nframework with graphical user interfaces, using gtk2hs.\n\n&#169; 2009, 2010 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.gtk)
          (hsPkgs.TypeCompose)
          (hsPkgs.TV)
        ];
      };
    };
  }