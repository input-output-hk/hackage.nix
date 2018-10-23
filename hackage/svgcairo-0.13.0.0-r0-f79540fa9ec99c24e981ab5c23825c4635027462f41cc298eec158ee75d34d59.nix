{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "svgcairo";
        version = "0.13.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-users@lists.sourceforge.net";
      author = "Duncan Coutts";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Binding to the libsvg-cairo library.";
      description = "Svgcairo is used to render SVG with cairo.";
      buildType = "Custom";
    };
    components = {
      "svgcairo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.glib)
          (hsPkgs.cairo)
        ];
        pkgconfig = [
          (pkgconfPkgs.librsvg-2.0)
        ];
      };
    };
  }