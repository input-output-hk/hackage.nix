{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "webkitgtk3-javascriptcore";
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
        webkitgtk3-javascriptcore = {
          depends  = [
            hsPkgs.base
            hsPkgs.glib
            hsPkgs.gtk3
            hsPkgs.webkitgtk3
          ];
        };
      };
    }