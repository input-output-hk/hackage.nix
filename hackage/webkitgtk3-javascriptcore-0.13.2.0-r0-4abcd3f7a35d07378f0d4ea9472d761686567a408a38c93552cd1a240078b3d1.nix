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
      specVersion = "1.24";
      identifier = {
        name = "webkitgtk3-javascriptcore";
        version = "0.13.2.0";
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
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.gtk2hs-buildtools or (pkgs.buildPackages.gtk2hs-buildtools or (errorHandler.buildToolDepError "gtk2hs-buildtools")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
          (hsPkgs."webkitgtk3" or (errorHandler.buildDepError "webkitgtk3"))
          ];
        pkgconfig = [
          (pkgconfPkgs."webkitgtk-3.0" or (errorHandler.pkgConfDepError "webkitgtk-3.0"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.gtk2hsC2hs or (pkgs.buildPackages.gtk2hsC2hs or (errorHandler.buildToolDepError "gtk2hsC2hs")))
          (hsPkgs.buildPackages.gtk2hsHookGenerator or (pkgs.buildPackages.gtk2hsHookGenerator or (errorHandler.buildToolDepError "gtk2hsHookGenerator")))
          (hsPkgs.buildPackages.gtk2hsTypeGen or (pkgs.buildPackages.gtk2hsTypeGen or (errorHandler.buildToolDepError "gtk2hsTypeGen")))
          ];
        buildable = true;
        };
      };
    }