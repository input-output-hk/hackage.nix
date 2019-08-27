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
      specVersion = "1.2";
      identifier = { name = "snake-game"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Akash Fulchand Jagdhane <akashjagdhane@gmail.com>";
      author = "Akash Fulchand Jagdhane <akashjagdhane@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Snake Game Using OpenGL";
      description = "This is a Snake Game where a BLIND YELLOW COMPUTER SNAKE is always hungry and runs all over the screen to swallow anything that comes in its ways, most of the times, YELLOW SQUARE BOXES (assuming its favorite food is inside each box). Whenever Snake eats 1 box, its length increases.\nOfcourse, since snake is blind, player have to help the snake in providing proper directions so that snake will eat maximum boxes.\nThe games finishes when Snake swallows itself(i.e. when player gives wrong directions to the snake).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."GLUT" or (buildDepError "GLUT"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      };
    }