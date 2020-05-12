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
      specVersion = "1.6";
      identifier = { name = "xmonad-contrib-gpl"; version = "0.12.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "kaction@gnu.org";
      author = "Dmitry Bogatov & others";
      homepage = "http://xmonad.org/";
      url = "";
      synopsis = "Third party extensions for xmonad";
      description = "Third party tiling algorithms, configurations and scripts to xmonad,\na tiling window manager for X, released under GPL license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or (errorHandler.buildDepError "xmonad-contrib"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }