{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "FunGEn";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2002 Andre Furtado <awbf@cin.ufpe.br>";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Andre Furtado <awbf@cin.ufpe.br>";
      homepage = "http://joyful.com/fungen";
      url = "";
      synopsis = "A lightweight, cross-platform, OpenGL/GLUT-based game engine.";
      description = "FunGEn (Functional Game Engine) is a BSD-licensed, cross-platform,\nOpenGL\\/GLUT-based, non-FRP game engine/framework written in\nHaskell. Created by Andre Furtado in 2002, it's the oldest Haskell\ngame engine, and with very few dependencies and two example games,\nit's one of the easiest ways to get started with Haskell game\ndevelopment.";
      buildType = "Simple";
    };
    components = {
      "FunGEn" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.random)
        ];
      };
      exes = {
        "fungen-hello" = {
          depends  = [
            (hsPkgs.FunGEn)
            (hsPkgs.base)
            (hsPkgs.OpenGL)
            (hsPkgs.GLUT)
            (hsPkgs.random)
          ];
        };
        "fungen-pong" = {
          depends  = [
            (hsPkgs.FunGEn)
            (hsPkgs.base)
            (hsPkgs.OpenGL)
            (hsPkgs.GLUT)
            (hsPkgs.random)
          ];
        };
        "fungen-worms" = {
          depends  = [
            (hsPkgs.FunGEn)
            (hsPkgs.base)
            (hsPkgs.OpenGL)
            (hsPkgs.GLUT)
            (hsPkgs.random)
          ];
        };
      };
    };
  }