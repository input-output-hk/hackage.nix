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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "FunGEn"; version = "0.4.6.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."GLUT" or (buildDepError "GLUT"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "fungen-hello" = {
          depends = [
            (hsPkgs."FunGEn" or (buildDepError "FunGEn"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "fungen-pong" = {
          depends = [
            (hsPkgs."FunGEn" or (buildDepError "FunGEn"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "fungen-worms" = {
          depends = [
            (hsPkgs."FunGEn" or (buildDepError "FunGEn"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }