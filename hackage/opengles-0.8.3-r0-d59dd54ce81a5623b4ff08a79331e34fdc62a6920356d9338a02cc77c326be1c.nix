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
      useegl = true;
      staticlinkes3 = false;
      staticlinkegl15 = false;
      buildexample = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "opengles"; version = "0.8.3"; };
      license = "LGPL-3.0-only";
      copyright = "2014-2016 capsjac";
      maintainer = "capsjac <capsjac at gmail.com>";
      author = "capsjac <capsjac at gmail.com>";
      homepage = "https://github.com/capsjac/opengles#readme";
      url = "";
      synopsis = "Functional interface for OpenGL 4.1+ and OpenGL ES 2.0+";
      description = "A functional OpenGL [ES] wrapper library.\nMade complicated OpenGL APIs easy yet keep flexible enough.\nResulting binary size is relatively small so that apps\nlaunches faster. Works on both desktop and mobile.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."half" or (errorHandler.buildDepError "half"))
          (hsPkgs."fixed" or (errorHandler.buildDepError "fixed"))
          (hsPkgs."future-resource" or (errorHandler.buildDepError "future-resource"))
          (hsPkgs."packer" or (errorHandler.buildDepError "packer"))
          ];
        libs = (pkgs.lib).optionals (system.isLinux) (if flags.useegl
          then [
            (pkgs."EGL" or (errorHandler.sysDepError "EGL"))
            (pkgs."GLESv2" or (errorHandler.sysDepError "GLESv2"))
            ]
          else [
            (pkgs."GL" or (errorHandler.sysDepError "GL"))
            ]) ++ (pkgs.lib).optionals (system.isWindows) (if flags.useegl
          then [
            (pkgs."libEGL" or (errorHandler.sysDepError "libEGL"))
            (pkgs."libGLESv2" or (errorHandler.sysDepError "libGLESv2"))
            ]
          else [ (pkgs."opengl32" or (errorHandler.sysDepError "opengl32")) ]);
        frameworks = (pkgs.lib).optionals (system.isIos) [
          (pkgs."QuartzCore" or (errorHandler.sysDepError "QuartzCore"))
          (pkgs."OpenGLES" or (errorHandler.sysDepError "OpenGLES"))
          ] ++ (pkgs.lib).optional (system.isOsx) (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL"));
        buildable = true;
        };
      exes = {
        "windmill" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opengles" or (errorHandler.buildDepError "opengles"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."future-resource" or (errorHandler.buildDepError "future-resource"))
            ];
          buildable = if !flags.buildexample then false else true;
          };
        "glsl-sandbox-player" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opengles" or (errorHandler.buildDepError "opengles"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."future-resource" or (errorHandler.buildDepError "future-resource"))
            ];
          buildable = if !flags.buildexample then false else true;
          };
        };
      tests = {
        "opengles-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opengles" or (errorHandler.buildDepError "opengles"))
            ];
          buildable = true;
          };
        };
      };
    }