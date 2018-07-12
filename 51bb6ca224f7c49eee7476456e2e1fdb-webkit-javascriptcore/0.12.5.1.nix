{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "webkit-javascriptcore";
          version = "0.12.5.1";
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
            hsPkgs.base
            hsPkgs.glib
            hsPkgs.gtk
            hsPkgs.webkit
          ];
          pkgconfig = [
            pkgconfPkgs."webkit-1.0"
          ];
        };
      };
    }