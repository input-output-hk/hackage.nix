{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      usenativewindowslibraries = true;
      buildexamples = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "GLUT";
        version = "2.7.0.14";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2002-2018 Sven Panne";
      maintainer = "Sven Panne <svenpanne@gmail.com>, Jason Dagit <dagitj@gmail.com>";
      author = "Sven Panne";
      homepage = "http://www.haskell.org/haskellwiki/Opengl";
      url = "";
      synopsis = "A binding for the OpenGL Utility Toolkit";
      description = "A Haskell binding for the OpenGL Utility Toolkit, a window system independent\ntoolkit for writing OpenGL programs. For more information about the C library\non which this binding is based, please see:\n<http://www.opengl.org/resources/libraries/glut/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.StateVar)
          (hsPkgs.OpenGL)
        ];
      };
      exes = {
        "BOGLGP01-OnYourOwn1" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "BOGLGP01-Simple" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "BOGLGP02-OnYourOwn1.hs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "BOGLGP02-OpenGLApplication.hs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "BOGLGP03-Lines" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "BOGLGP03-OnYourOwn1" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "BOGLGP03-Points" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "BOGLGP03-Polygons" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "BOGLGP03-TrianglesQuads" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "Misc-ARBOcclude" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "Misc-ColorTriangle" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.GLUT)
          ];
        };
        "Misc-ExtractContours" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "Misc-Gears" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "Misc-Pitfall14" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "Misc-SmoothOpenGL3" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.OpenGLRaw)
            (hsPkgs.GLUT)
          ];
        };
        "Misc-Triangulate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.GLUT)
          ];
        };
        "OrangeBook-Brick" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-AAIndex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-AARGB" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-AccAnti" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-AccPersp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Alpha" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Alpha3D" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-BezCurve" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-BezMesh" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-BezSurf" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-BlendEqn" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Checker" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Clip" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-ColorMat" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-ColorMatrix" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-ColorTable" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Combiner" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Convolution" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Cube" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-CubeMap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-DList" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-DOF" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Double" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-DrawF" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Feedback" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Fog" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-FogCoord" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-FogIndex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Font" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Hello" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Histogram" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Image" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Light" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Lines" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-MVArray" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Material" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Minmax" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Mipmap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Model" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-MoveLight" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-MultiTex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Multisamp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-PickDepth" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-PickSquare" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Planet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-PointP" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-PolyOff" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Polys" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Quadric" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Robot" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Scene" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Select" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-ShadowMap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Smooth" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Stencil" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Stroke" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-SurfPoints" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Surface" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Teapots" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Tess" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-TessWind" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-TexBind" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-TexGen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-TexProx" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-TexSub" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Texture3D" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-TextureSurf" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Torus" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Trim" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-UnProject" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-VArray" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook4-Wrap" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
          ];
        };
        "RedBook8-Triangles" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.GLUT)
          ];
        };
      };
    };
  }