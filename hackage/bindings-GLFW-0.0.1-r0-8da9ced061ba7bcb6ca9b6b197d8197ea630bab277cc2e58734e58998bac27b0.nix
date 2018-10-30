{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      macosxusechdir = true;
      macosxusemenubar = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bindings-GLFW";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to GLFW OpenGL library";
      description = "Low-level bindings to <http://www.glfw.org/ GLFW>, an open source,\nmulti-platform library for creating windows with OpenGL contexts and managing\ninput and events.\n\nThe binding is to\n<http://www.glfw.org/Version-3.0.1-released.html GLFW 3.0.1, released 2013-06-17>.\n\n/These bindings are too low-level for normal use./ For higher-level bindings,\nsee <http://hackage.haskell.org/package/GLFW-b GLFW-b>.\n\nIf you've used GLFW before, you were probably using 2.7.x. There are some\nsignificant differences in 3.0.x. Please see the\n<http://www.glfw.org/docs/3.0/moving.html transition guide>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        libs = pkgs.lib.optionals (system.isLinux || system.isFreebsd) [
          (pkgs."GL")
          (pkgs."X11")
          (pkgs."Xi")
          (pkgs."Xrandr")
          (pkgs."Xxf86vm")
          (pkgs."pthread")
        ] ++ pkgs.lib.optionals (system.isWindows) [
          (pkgs."opengl32")
          (pkgs."Gdi32")
        ];
        frameworks = pkgs.lib.optionals (system.isOsx) [
          (pkgs."AGL")
          (pkgs."Cocoa")
          (pkgs."OpenGL")
          (pkgs."IOKit")
          (pkgs."CoreFoundation")
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "main" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.bindings-GLFW)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }