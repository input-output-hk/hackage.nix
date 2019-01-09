{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "FunGEn"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2002 Andre Furtado <awbf@cin.ufpe.br>";
      maintainer = "wman <666wman@gmail.com>";
      author = "Andre Furtado <awbf@cin.ufpe.br>";
      homepage = "";
      url = "";
      synopsis = "FUNctional Game ENgine";
      description = "Multi-platform functional game engine built on top of OpenGL & GLUT";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.haskell98)
          ];
        };
      };
    }