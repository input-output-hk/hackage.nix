{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GLFW";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Paul H. Liu <paul@thev.net>";
        author = "";
        homepage = "http://haskell.org/haskellwiki/GLFW";
        url = "";
        synopsis = "A binding for GLFW, An OpenGL Framework";
        description = "A Haskell binding for GLFW OpenGL Framework, a window\nsystem independent toolkit for writing OpenGL programs. For more\ninformation about the C library on which this binding is based,\nplease see: <http://glfw.sourceforge.net>";
        buildType = "Custom";
      };
      components = {
        GLFW = {
          depends  = [
            hsPkgs.base
            hsPkgs.OpenGL
          ];
          libs = if system.isLinux
            then [ pkgs.Xrandr pkgs.X11 ]
            else pkgs.lib.optional (!system.isOsx && system.isWindows) pkgs.opengl32;
          frameworks = pkgs.lib.optionals (!system.isLinux && system.isOsx) [
            pkgs.AGL
            pkgs.Carbon
            pkgs.OpenGL
          ];
        };
      };
    }