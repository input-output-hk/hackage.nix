{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "webkit-javascriptcore";
        version = "0.14.2.1";
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
        depends  = [ (hsPkgs.base) ];
        pkgconfig = [
          (pkgconfPkgs.webkit-1.0)
        ];
      };
    };
  }