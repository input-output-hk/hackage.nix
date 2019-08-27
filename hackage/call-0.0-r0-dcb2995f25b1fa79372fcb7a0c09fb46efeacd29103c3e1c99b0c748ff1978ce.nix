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
      specVersion = "1.10";
      identifier = { name = "call"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Fumiaki Kinoshita 2014";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/call";
      url = "";
      synopsis = "The call game engine";
      description = "Call is a minimalistic game engine which supports 2D graphics and sounds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."control-bool" or (buildDepError "control-bool"))
          (hsPkgs."colors" or (buildDepError "colors"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."boundingboxes" or (buildDepError "boundingboxes"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."JuicyPixels-util" or (buildDepError "JuicyPixels-util"))
          (hsPkgs."WAVE" or (buildDepError "WAVE"))
          (hsPkgs."freetype2" or (buildDepError "freetype2"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."objective" or (buildDepError "objective"))
          (hsPkgs."bindings-portaudio" or (buildDepError "bindings-portaudio"))
          ];
        };
      };
    }