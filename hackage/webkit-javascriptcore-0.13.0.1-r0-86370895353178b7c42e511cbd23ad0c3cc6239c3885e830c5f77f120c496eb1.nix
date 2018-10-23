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
        name = "webkit-javascriptcore";
        version = "0.13.0.1";
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
      "webkit-javascriptcore" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.webkit)
        ];
        pkgconfig = [
          (pkgconfPkgs.webkit-1.0)
        ];
      };
    };
  }