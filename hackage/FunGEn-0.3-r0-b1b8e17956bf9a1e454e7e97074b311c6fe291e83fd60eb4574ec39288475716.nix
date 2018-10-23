{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "FunGEn";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2002 Andre Furtado <awbf@cin.ufpe.br>, (C) 2008 Miloslav Raus <666wman@gmail.com>, (C) 2008,2011 Simon Michael <simon@joyful.com>";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Andre Furtado <awbf@cin.ufpe.br>";
      homepage = "http://darcsden.com/simon/fungen";
      url = "";
      synopsis = "FUNctional Game ENgine";
      description = "Multi-platform 2D game engine built on top of OpenGL & GLUT";
      buildType = "Simple";
    };
    components = {
      "FunGEn" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.haskell98)
          (hsPkgs.random)
        ];
      };
    };
  }