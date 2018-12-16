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
        name = "HPlot";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yakov ZAYTSEV <yakov@yakov.cc>";
      author = "Yakov ZAYTSEV <yakov@yakov.cc>";
      homepage = "http://yakov.cc/HPlot.html";
      url = "";
      synopsis = "A minimal monadic PLplot interface for Haskell";
      description = "This package provides simple monadic interface to the PLplot cross-platform software\npackage for creating scientific plots.\n\nHaddock documentation (hyperlinked with source code) is available from homepage\n\nPlplotCanvas widget is implemented to be compatible with gtk2hs. PLplot type class allows\naddition of other display drivers without need to adopt application code\n\nThe idea was that with the help of PLplotM monad it should be easy to make\nmore abstract interfaces and combinators to do plots\n\nYou are welcome to send your changes to be included in future release\n\nIt will be great if you will do 'git format-patch' to prepare email with changes against particular version\n\nChanges since 0.1:\n\n* Roman Salmin contributed 'ssub' and 'bin' functions\n\n* 'Flt' type has been added which mirrors PLFLT\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.gtk)
          (hsPkgs.glade)
          (hsPkgs.glib)
        ];
        pkgconfig = [
          (pkgconfPkgs.plplotd-gnome2)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "Example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gtk)
            (hsPkgs.glade)
            (hsPkgs.glib)
            (hsPkgs.base)
            (hsPkgs.gtk)
            (hsPkgs.glade)
            (hsPkgs.glib)
          ];
          pkgconfig = [
            (pkgconfPkgs.plplotd-gnome2)
          ];
        };
      };
    };
  }