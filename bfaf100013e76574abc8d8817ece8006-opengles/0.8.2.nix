{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      useegl = true;
      staticlinkes3 = false;
      staticlinkegl15 = false;
      buildexample = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "opengles";
        version = "0.8.2";
      };
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
      "opengles" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.bytestring)
          (hsPkgs.distributive)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.linear)
          (hsPkgs.lens)
          (hsPkgs.half)
          (hsPkgs.fixed)
          (hsPkgs.future-resource)
          (hsPkgs.packer)
        ];
        libs = pkgs.lib.optionals (system.isLinux) (if _flags.useegl
          then [
            (pkgs."EGL")
            (pkgs."GLESv2")
          ]
          else [
            (pkgs."GL")
          ]) ++ pkgs.lib.optionals (system.isWindows) (if _flags.useegl
          then [
            (pkgs."libEGL")
            (pkgs."libGLESv2")
          ]
          else [ (pkgs."opengl32") ]);
        frameworks = pkgs.lib.optionals (system.isIos) [
          (pkgs."QuartzCore")
          (pkgs."OpenGLES")
        ] ++ pkgs.lib.optional (system.isOsx) (pkgs."OpenGL");
      };
      exes = {
        "windmill" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.opengles)
            (hsPkgs.random)
            (hsPkgs.GLFW-b)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.future-resource)
          ];
        };
        "glsl-sandbox-player" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.opengles)
            (hsPkgs.GLFW-b)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.future-resource)
          ];
        };
      };
      tests = {
        "opengles-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.opengles)
          ];
        };
      };
    };
  }