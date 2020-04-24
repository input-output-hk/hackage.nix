{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dynamic = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "GLFW"; version = "0.5.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>";
      author = "";
      homepage = "http://haskell.org/haskellwiki/GLFW";
      url = "";
      synopsis = "A Haskell binding for GLFW";
      description = "A Haskell binding for GLFW, a window system independent toolkit\nfor writing OpenGL programs. For more information about the C\nlibrary on which this binding is based, please see\n<http://www.glfw.org>. Note that this binding comes with an\nolder GLFW C version 2.7.9 due to incompatible API changes in\nGLFW since 3.0 (for example, the removal of texture functions).\nIf you want to use newer GLFW C versions, install Haskell package\nGLFW-b instead.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          ];
        libs = if flags.dynamic
          then [ (pkgs."glfw" or ((hsPkgs.pkgs-errors).sysDepError "glfw")) ]
          else (pkgs.lib).optionals (!system.isOsx) (if system.isWindows
            then [
              (pkgs."opengl32" or ((hsPkgs.pkgs-errors).sysDepError "opengl32"))
              ]
            else [
              (pkgs."X11" or ((hsPkgs.pkgs-errors).sysDepError "X11"))
              (pkgs."GL" or ((hsPkgs.pkgs-errors).sysDepError "GL"))
              ]);
        frameworks = (pkgs.lib).optionals (!flags.dynamic) ((pkgs.lib).optionals (system.isOsx) [
          (pkgs."Cocoa" or ((hsPkgs.pkgs-errors).sysDepError "Cocoa"))
          (pkgs."OpenGL" or ((hsPkgs.pkgs-errors).sysDepError "OpenGL"))
          (pkgs."IOKit" or ((hsPkgs.pkgs-errors).sysDepError "IOKit"))
          ]);
        buildable = true;
        };
      };
    }