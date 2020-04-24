{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dynamic = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "GLFW"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>";
      author = "";
      homepage = "http://haskell.org/haskellwiki/GLFW";
      url = "";
      synopsis = "A Haskell binding for GLFW";
      description = "A Haskell binding for GLFW, a window system independent toolkit\nfor writing OpenGL programs. For more information about the C\nlibrary on which this binding is based, please see\n<http://glfw.sourceforge.net>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          ];
        libs = if flags.dynamic
          then [ (pkgs."glfw" or ((hsPkgs.pkgs-errors).sysDepError "glfw")) ]
          else if system.isLinux
            then [
              (pkgs."Xrandr" or ((hsPkgs.pkgs-errors).sysDepError "Xrandr"))
              (pkgs."X11" or ((hsPkgs.pkgs-errors).sysDepError "X11"))
              ]
            else (pkgs.lib).optionals (!system.isOsx) ((pkgs.lib).optional (system.isWindows) (pkgs."opengl32" or ((hsPkgs.pkgs-errors).sysDepError "opengl32")));
        frameworks = (pkgs.lib).optionals (!flags.dynamic) ((pkgs.lib).optionals (!system.isLinux) ((pkgs.lib).optionals (system.isOsx) [
          (pkgs."AGL" or ((hsPkgs.pkgs-errors).sysDepError "AGL"))
          (pkgs."Carbon" or ((hsPkgs.pkgs-errors).sysDepError "Carbon"))
          (pkgs."OpenGL" or ((hsPkgs.pkgs-errors).sysDepError "OpenGL"))
          ]));
        buildable = true;
        };
      };
    }