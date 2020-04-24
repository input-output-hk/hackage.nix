{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "GLFW-OGL"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "none";
      author = "";
      homepage = "http://haskell.org/haskellwiki/GLFW-OGL";
      url = "";
      synopsis = "A binding for GLFW (OGL)";
      description = "Provisional port of the GLFW-0.3 package to 'OGL'";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."OGL" or ((hsPkgs.pkgs-errors).buildDepError "OGL"))
          ];
        libs = if system.isLinux
          then [
            (pkgs."Xrandr" or ((hsPkgs.pkgs-errors).sysDepError "Xrandr"))
            (pkgs."X11" or ((hsPkgs.pkgs-errors).sysDepError "X11"))
            ]
          else (pkgs.lib).optionals (!system.isOsx) ((pkgs.lib).optional (system.isWindows) (pkgs."opengl32" or ((hsPkgs.pkgs-errors).sysDepError "opengl32")));
        frameworks = (pkgs.lib).optionals (!system.isLinux) ((pkgs.lib).optionals (system.isOsx) [
          (pkgs."AGL" or ((hsPkgs.pkgs-errors).sysDepError "AGL"))
          (pkgs."Carbon" or ((hsPkgs.pkgs-errors).sysDepError "Carbon"))
          (pkgs."OpenGL" or ((hsPkgs.pkgs-errors).sysDepError "OpenGL"))
          ]);
        buildable = true;
        };
      };
    }