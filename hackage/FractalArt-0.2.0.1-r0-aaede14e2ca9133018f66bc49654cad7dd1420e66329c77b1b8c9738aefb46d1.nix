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
      specVersion = "1.10";
      identifier = { name = "FractalArt"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom.TSmeets@Gmail.com";
      author = "Tom";
      homepage = "";
      url = "";
      synopsis = "Generates colorful wallpapers";
      description = "This application generates colorful images as a wallpaper";
      buildType = "Simple";
    };
    components = {
      exes = {
        "FractalArt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ];
          libs = pkgs.lib.optional (system.isLinux) (pkgs."X11" or (errorHandler.sysDepError "X11")) ++ pkgs.lib.optional (system.isOsx) (pkgs."objc" or (errorHandler.sysDepError "objc"));
          buildable = true;
        };
      };
    };
  }