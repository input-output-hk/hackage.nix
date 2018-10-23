{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "webkitgtk3-javascriptcore";
        version = "0.13.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "";
      url = "";
      synopsis = "JavaScriptCore FFI from webkitgtk";
      description = "FFI for JavaScriptCore module from webkitgtk";
      buildType = "Custom";
    };
    components = {
      "webkitgtk3-javascriptcore" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.glib)
          (hsPkgs.gtk3)
          (hsPkgs.webkitgtk3)
        ];
        pkgconfig = [
          (pkgconfPkgs.webkitgtk-3.0)
        ];
      };
    };
  }