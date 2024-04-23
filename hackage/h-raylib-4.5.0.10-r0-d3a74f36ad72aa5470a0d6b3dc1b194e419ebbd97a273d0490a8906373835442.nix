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
    flags = {
      detect-platform = true;
      platform-windows = false;
      platform-mac = false;
      platform-linux = false;
      platform-bsd = false;
      mingw-cross = false;
      examples = false;
    };
    package = {
      specVersion = "2.4";
      identifier = { name = "h-raylib"; version = "4.5.0.10"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Anut";
      author = "Anut";
      homepage = "";
      url = "";
      synopsis = "Raylib bindings for Haskell";
      description = "This library includes Haskell bindings to the Raylib library. It supports Windows, Mac, Linux, and BSD.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = if flags.platform-windows || flags.detect-platform && system.isWindows
          then if flags.mingw-cross
            then [
              (pkgs."opengl32" or (errorHandler.sysDepError "opengl32"))
              (pkgs."gdi32" or (errorHandler.sysDepError "gdi32"))
              (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
              (pkgs."shell32" or (errorHandler.sysDepError "shell32"))
              (pkgs."gcc" or (errorHandler.sysDepError "gcc"))
            ]
            else [
              (pkgs."opengl32" or (errorHandler.sysDepError "opengl32"))
              (pkgs."gdi32" or (errorHandler.sysDepError "gdi32"))
              (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
              (pkgs."shell32" or (errorHandler.sysDepError "shell32"))
            ]
          else if flags.platform-linux || flags.detect-platform && system.isLinux
            then [
              (pkgs."GL" or (errorHandler.sysDepError "GL"))
              (pkgs."c" or (errorHandler.sysDepError "c"))
              (pkgs."m" or (errorHandler.sysDepError "m"))
              (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
              (pkgs."dl" or (errorHandler.sysDepError "dl"))
              (pkgs."rt" or (errorHandler.sysDepError "rt"))
              (pkgs."X11" or (errorHandler.sysDepError "X11"))
              (pkgs."Xinerama" or (errorHandler.sysDepError "Xinerama"))
              (pkgs."Xcursor" or (errorHandler.sysDepError "Xcursor"))
              (pkgs."Xrandr" or (errorHandler.sysDepError "Xrandr"))
              (pkgs."Xi" or (errorHandler.sysDepError "Xi"))
            ]
            else pkgs.lib.optionals (!(flags.platform-mac || flags.detect-platform && system.isOsx)) (pkgs.lib.optionals (flags.platform-bsd || flags.detect-platform && (system.isFreebsd || system.isNetbsd || system.isOpenbsd)) [
              (pkgs."GL" or (errorHandler.sysDepError "GL"))
              (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
            ]);
        frameworks = pkgs.lib.optionals (!(flags.platform-windows || flags.detect-platform && system.isWindows)) (pkgs.lib.optionals (!(flags.platform-linux || flags.detect-platform && system.isLinux)) (pkgs.lib.optionals (flags.platform-mac || flags.detect-platform && system.isOsx) [
          (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL"))
          (pkgs."Cocoa" or (errorHandler.sysDepError "Cocoa"))
          (pkgs."IOKit" or (errorHandler.sysDepError "IOKit"))
          (pkgs."CoreVideo" or (errorHandler.sysDepError "CoreVideo"))
          (pkgs."CoreAudio" or (errorHandler.sysDepError "CoreAudio"))
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
        ]));
        buildable = true;
      };
      exes = {
        "basic-window" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "camera-ray-collision" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "custom-font-text" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "first-person-camera" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }