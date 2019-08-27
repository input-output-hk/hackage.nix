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
      identifier = { name = "nehe-tuts"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dagit@eecs.oregonstate.edu";
      author = "Jason Dagit";
      homepage = "";
      url = "";
      synopsis = "Port of the NeHe OpenGL tutorials to Haskell.";
      description = "Port of the NeHe OpenGL tutorials to Haskell; so far only lessons 1-12 have been ported.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lesson01" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          };
        "lesson02" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          };
        "lesson03" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          };
        "lesson04" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          };
        "lesson05" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          };
        "lesson06" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            ];
          };
        "lesson07" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          };
        "lesson08" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          };
        "lesson09" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          };
        "lesson10" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          };
        "lesson11" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          };
        "lesson12" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          };
        };
      };
    }