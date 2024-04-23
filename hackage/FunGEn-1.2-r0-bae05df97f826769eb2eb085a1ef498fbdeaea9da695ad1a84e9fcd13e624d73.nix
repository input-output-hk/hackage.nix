{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "FunGEn"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2002 Andre Furtado <awbf@cin.ufpe.br>";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Andre Furtado <awbf@cin.ufpe.br>";
      homepage = "https://github.com/haskell-game/fungen";
      url = "";
      synopsis = "A lightweight, cross-platform, OpenGL-based game engine.";
      description = "FunGEn (Functional Game Engine) is a BSD-licensed, cross-platform,\nOpenGL-based, non-FRP game engine written in Haskell.\nCreated by Andre Furtado in 2002, it's the oldest Haskell\ngame engine, and with very few dependencies and two example games,\nit's one of the easiest ways to get started with Haskell game\ndevelopment.\n\nThe FunGEn library provides:\n\n* Initialization, updating, removing, rendering and grouping\nroutines for game objects\n\n* Definition of a game background (or map), including texture-based\nmaps and tile maps\n\n* Reading and intepretation of the player's keyboard and mouse input\n\n* Collision detection\n\n* Time-based functions and pre-defined game actions\n\n* Loading and displaying of 24-bit bitmap files\n\n* Some debugging and game performance evaluation facilities\n\nThis package receives only basic maintenance (see home page).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
      exes = {
        "fungen-hello" = {
          depends = [
            (hsPkgs."FunGEn" or (errorHandler.buildDepError "FunGEn"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "fungen-pong" = {
          depends = [
            (hsPkgs."FunGEn" or (errorHandler.buildDepError "FunGEn"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "fungen-worms" = {
          depends = [
            (hsPkgs."FunGEn" or (errorHandler.buildDepError "FunGEn"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }