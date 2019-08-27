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
      identifier = { name = "nehe-tuts"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dagitj@gmail.com";
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
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            ];
          };
        "lesson02" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            ];
          };
        "lesson03" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            ];
          };
        "lesson04" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            ];
          };
        "lesson05" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            ];
          };
        "lesson06" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "lesson07" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "lesson08" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "lesson09" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "lesson10" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "lesson11" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "lesson12" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLURaw" or (buildDepError "GLURaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }