{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "webkitgtk3-javascriptcore";
        version = "0.14.0.0";
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
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        pkgconfig = [
          (pkgconfPkgs."webkitgtk-3.0" or (errorHandler.pkgConfDepError "webkitgtk-3.0"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs.components.exes.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (errorHandler.buildToolDepError "gtk2hsC2hs:gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator.components.exes.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (errorHandler.buildToolDepError "gtk2hsHookGenerator:gtk2hsHookGenerator")))
          (hsPkgs.buildPackages.gtk2hsTypeGen.components.exes.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (errorHandler.buildToolDepError "gtk2hsTypeGen:gtk2hsTypeGen")))
          ];
        buildable = true;
        };
      };
    }