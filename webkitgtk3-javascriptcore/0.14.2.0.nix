{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.24";
        identifier = {
          name = "webkitgtk3-javascriptcore";
          version = "0.14.2.0";
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
          depends  = [ hsPkgs.base ];
        };
      };
    }