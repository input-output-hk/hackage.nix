{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "webkitgtk3-javascriptcore";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.glib)
          (hsPkgs.gtk3)
          (hsPkgs.webkitgtk3)
          ];
        pkgconfig = [ (pkgconfPkgs."webkitgtk-3.0") ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen))
          ];
        };
      };
    }