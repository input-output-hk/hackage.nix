{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      system-glfw = false;
      macosxusechdir = true;
      macosxusemenubar = true;
      macosxuseretina = true;
      x = true;
      wayland = false;
      mir = false;
      exposenative = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bindings-GLFW";
        version = "3.2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>\n, Schell Scivally <efsubenovex@gmail.com>\n, Javier Jaramago <jaramago.fernandez.javier@gmail.com>\n, Pavel Krajcevski <krajcevski@gmail.com>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to GLFW OpenGL library";
      description = "Low-level bindings to GLFW (<http://www.glfw.org/>), an open source,\nmulti-platform library for creating windows with OpenGL contexts and managing\ninput and events.\n\nThe binding is to GLFW 3.2, released 2016-08-18\n(<http://www.glfw.org/Version-3.2-released.html>\n<http://www.glfw.org/changelog.html>).\n\n/These bindings are too low-level for normal use./ For higher-level bindings,\nsee GLFW-b (<http://hackage.haskell.org/package/GLFW-b>).\n\nIf you've used GLFW before, you were probably using 2.7.x. There are some\nsignificant differences in 3.x.x. Please see the transition guide\n(<http://www.glfw.org/docs/3.2/moving.html>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        libs = pkgs.lib.optionals (!flags.system-glfw) (pkgs.lib.optionals (system.isLinux || system.isFreebsd) [
          (pkgs."GL")
          (pkgs."X11")
          (pkgs."Xi")
          (pkgs."Xrandr")
          (pkgs."Xxf86vm")
          (pkgs."Xcursor")
          (pkgs."Xinerama")
          (pkgs."pthread")
        ] ++ pkgs.lib.optionals (system.isWindows) [
          (pkgs."opengl32")
          (pkgs."Gdi32")
        ]);
        frameworks = pkgs.lib.optionals (!flags.system-glfw) (pkgs.lib.optionals (system.isOsx) [
          (pkgs."AGL")
          (pkgs."Cocoa")
          (pkgs."OpenGL")
          (pkgs."IOKit")
          (pkgs."CoreFoundation")
          (pkgs."CoreVideo")
        ]);
        pkgconfig = pkgs.lib.optional (flags.system-glfw) (pkgconfPkgs.glfw3);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "main" = {
          depends  = [
            (hsPkgs.bindings-GLFW)
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
          frameworks = [
            (pkgs."AGL")
            (pkgs."Cocoa")
            (pkgs."OpenGL")
            (pkgs."IOKit")
            (pkgs."CoreFoundation")
            (pkgs."CoreVideo")
          ];
        };
      };
    };
  }