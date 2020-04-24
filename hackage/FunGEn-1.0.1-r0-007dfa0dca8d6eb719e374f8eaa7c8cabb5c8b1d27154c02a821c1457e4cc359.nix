{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "FunGEn"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2002 Andre Furtado <awbf@cin.ufpe.br>";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Andre Furtado <awbf@cin.ufpe.br>";
      homepage = "http://joyful.com/fungen";
      url = "";
      synopsis = "A lightweight, cross-platform, OpenGL/GLUT-based game engine.";
      description = "FunGEn (Functional Game Engine) is a BSD-licensed, cross-platform,\nOpenGL/GLUT-based, non-FRP game engine/framework written in\nHaskell. Created by Andre Furtado in 2002, it's the oldest Haskell\ngame engine, and with very few dependencies and two example games,\nit's one of the easiest ways to get started with Haskell game\ndevelopment.\nThe FunGEn library provides:\n* Initialization, updating, removing, rendering and grouping\nroutines for game objects\n* Definition of a game background (or map), including texture-based\nmaps and tile maps\n* Reading and intepretation of the player's keyboard and mouse input\n* Collision detection\n* Time-based functions and pre-defined game actions\n* Loading and displaying of 24-bit bitmap files\n* Some debugging and game performance evaluation facilities\nThis package receives only basic maintenance (see home page).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "fungen-hello" = {
          depends = [
            (hsPkgs."FunGEn" or ((hsPkgs.pkgs-errors).buildDepError "FunGEn"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        "fungen-pong" = {
          depends = [
            (hsPkgs."FunGEn" or ((hsPkgs.pkgs-errors).buildDepError "FunGEn"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        "fungen-worms" = {
          depends = [
            (hsPkgs."FunGEn" or ((hsPkgs.pkgs-errors).buildDepError "FunGEn"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }