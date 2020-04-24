{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."half" or ((hsPkgs.pkgs-errors).buildDepError "half"))
          (hsPkgs."fixed" or ((hsPkgs.pkgs-errors).buildDepError "fixed"))
          (hsPkgs."future-resource" or ((hsPkgs.pkgs-errors).buildDepError "future-resource"))
          (hsPkgs."packer" or ((hsPkgs.pkgs-errors).buildDepError "packer"))
          ];
        libs = (pkgs.lib).optionals (system.isLinux) (if flags.useegl
          then [
            (pkgs."EGL" or ((hsPkgs.pkgs-errors).sysDepError "EGL"))
            (pkgs."GLESv2" or ((hsPkgs.pkgs-errors).sysDepError "GLESv2"))
            ]
          else [
            (pkgs."GL" or ((hsPkgs.pkgs-errors).sysDepError "GL"))
            ]) ++ (pkgs.lib).optionals (system.isWindows) (if flags.useegl
          then [
            (pkgs."libEGL" or ((hsPkgs.pkgs-errors).sysDepError "libEGL"))
            (pkgs."libGLESv2" or ((hsPkgs.pkgs-errors).sysDepError "libGLESv2"))
            ]
          else [
            (pkgs."opengl32" or ((hsPkgs.pkgs-errors).sysDepError "opengl32"))
            ]);
        frameworks = (pkgs.lib).optionals (system.isIos) [
          (pkgs."QuartzCore" or ((hsPkgs.pkgs-errors).sysDepError "QuartzCore"))
          (pkgs."OpenGLES" or ((hsPkgs.pkgs-errors).sysDepError "OpenGLES"))
          ] ++ (pkgs.lib).optional (system.isOsx) (pkgs."OpenGL" or ((hsPkgs.pkgs-errors).sysDepError "OpenGL"));
        buildable = true;
        };
      exes = {
        "windmill" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."opengles" or ((hsPkgs.pkgs-errors).buildDepError "opengles"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."future-resource" or ((hsPkgs.pkgs-errors).buildDepError "future-resource"))
            ];
          buildable = if !flags.buildexample then false else true;
          };
        "glsl-sandbox-player" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."opengles" or ((hsPkgs.pkgs-errors).buildDepError "opengles"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."future-resource" or ((hsPkgs.pkgs-errors).buildDepError "future-resource"))
            ];
          buildable = if !flags.buildexample then false else true;
          };
        };
      tests = {
        "opengles-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."opengles" or ((hsPkgs.pkgs-errors).buildDepError "opengles"))
            ];
          buildable = true;
          };
        };
      };
    }