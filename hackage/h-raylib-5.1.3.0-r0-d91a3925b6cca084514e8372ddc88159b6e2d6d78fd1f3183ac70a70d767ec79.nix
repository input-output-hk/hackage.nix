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
      platform-nixos = false;
      platform-web = false;
      mingw-cross = false;
      examples = false;
      ghci = false;
    };
    package = {
      specVersion = "2.4";
      identifier = { name = "h-raylib"; version = "5.1.3.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Anut";
      author = "Anut";
      homepage = "";
      url = "";
      synopsis = "Raylib bindings for Haskell";
      description = "This library contains Haskell bindings to the Raylib library. It supports Windows, Mac, Linux, and BSD.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = (if flags.platform-windows || flags.detect-platform && system.isWindows
          then if flags.mingw-cross
            then [
              (pkgs."opengl32" or (errorHandler.sysDepError "opengl32"))
              (pkgs."gdi32" or (errorHandler.sysDepError "gdi32"))
              (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
              (pkgs."shell32" or (errorHandler.sysDepError "shell32"))
              (pkgs."gcc" or (errorHandler.sysDepError "gcc"))
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.4.1") (pkgs."gcc_eh" or (errorHandler.sysDepError "gcc_eh"))
            else [
              (pkgs."opengl32" or (errorHandler.sysDepError "opengl32"))
              (pkgs."gdi32" or (errorHandler.sysDepError "gdi32"))
              (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
              (pkgs."shell32" or (errorHandler.sysDepError "shell32"))
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.4.1") (pkgs."gcc_eh" or (errorHandler.sysDepError "gcc_eh"))
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
              (pkgs."Xext" or (errorHandler.sysDepError "Xext"))
            ]
            else pkgs.lib.optionals (!(flags.platform-mac || flags.detect-platform && system.isOsx)) (pkgs.lib.optionals (flags.platform-bsd || flags.detect-platform && (system.isFreebsd || system.isNetbsd || system.isOpenbsd)) [
              (pkgs."GL" or (errorHandler.sysDepError "GL"))
              (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
            ])) ++ pkgs.lib.optional (flags.platform-nixos) (pkgs."raylib" or (errorHandler.sysDepError "raylib"));
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
        "basic-callbacks" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "basic-automation-events" = {
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
        "camera-ray-collision" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "basic-images" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "bunnymark" = {
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
        "basic-models" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "basic-shaders" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "postprocessing-effects" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "basic-audio" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "basic-rlgl" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "raygui-suite" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."h-raylib" or (errorHandler.buildDepError "h-raylib"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }