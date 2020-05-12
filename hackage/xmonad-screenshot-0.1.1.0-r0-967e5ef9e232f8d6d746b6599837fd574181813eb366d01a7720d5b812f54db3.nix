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
      specVersion = "1.8";
      identifier = { name = "xmonad-screenshot"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Dmitry Malikov, malikov.d.y@gmail.com";
      author = "Matvey Aksenov";
      homepage = "http://github.com/supki/xmonad-screenshot";
      url = "";
      synopsis = "Workspaces screenshooting utility for XMonad.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xmonad" or (errorHandler.buildDepError "xmonad"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          ];
        buildable = true;
        };
      };
    }