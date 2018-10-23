{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "webkit";
        version = "0.12.0";
      };
      license = "LGPL-2.1-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@sourceforge.net";
      author = "Cjacker Huang, Andy Stewart, Axel Simon";
      homepage = "http://www.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the Webkit library.";
      description = "WebKit is a web content engine, derived from KHTML and KJS from KDE, and\nused primarily in Apple's Safari browser.  It is made to be embedded in\nother applications, such as mail readers, or web browsers.\nIt is able to display content such as HTML, SVG, XML, and others. It also\nsupports DOM, XMLHttpRequest, XSLT, CSS, Javascript/ECMAscript and more.";
      buildType = "Custom";
    };
    components = {
      "webkit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.glib)
          (hsPkgs.pango)
          (hsPkgs.cairo)
          (hsPkgs.gtk)
        ];
        pkgconfig = [
          (pkgconfPkgs.webkit-1.0)
        ];
      };
    };
  }