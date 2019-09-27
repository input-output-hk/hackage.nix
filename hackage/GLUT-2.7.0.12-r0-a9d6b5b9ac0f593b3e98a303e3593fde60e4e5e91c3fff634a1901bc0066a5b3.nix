let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usenativewindowslibraries = true; buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "GLUT"; version = "2.7.0.12"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2002-2016 Sven Panne";
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."StateVar" or (buildDepError "StateVar"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      exes = {
        "BOGLGP01-OnYourOwn1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "BOGLGP01-Simple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "BOGLGP02-OnYourOwn1.hs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "BOGLGP02-OpenGLApplication.hs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "BOGLGP03-Lines" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "BOGLGP03-OnYourOwn1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "BOGLGP03-Points" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "BOGLGP03-Polygons" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "BOGLGP03-TrianglesQuads" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "Misc-ARBOcclude" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "Misc-ColorTriangle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "Misc-ExtractContours" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "Misc-Gears" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "Misc-Pitfall14" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "Misc-SmoothOpenGL3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "Misc-Triangulate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "OrangeBook-Brick" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-AAIndex" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-AARGB" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-AccAnti" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-AccPersp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Alpha" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Alpha3D" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-BezCurve" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-BezMesh" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-BezSurf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-BlendEqn" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Checker" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Clip" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-ColorMat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-ColorMatrix" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-ColorTable" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Combiner" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Convolution" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Cube" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-CubeMap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-DList" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-DOF" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Double" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-DrawF" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Feedback" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Fog" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-FogCoord" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-FogIndex" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Font" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Hello" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Histogram" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Image" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Light" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Lines" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-MVArray" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Material" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Minmax" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Mipmap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Model" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-MoveLight" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-MultiTex" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Multisamp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-PickDepth" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-PickSquare" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Planet" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-PointP" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-PolyOff" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Polys" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Quadric" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Robot" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Scene" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Select" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-ShadowMap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Smooth" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Stencil" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Stroke" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-SurfPoints" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Surface" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Teapots" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Tess" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-TessWind" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-TexBind" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-TexGen" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-TexProx" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-TexSub" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Texture3D" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-TextureSurf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Torus" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Trim" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-UnProject" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-VArray" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook4-Wrap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "RedBook8-Triangles" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        };
      };
    }