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
    flags = { buildhelloworld = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "call"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Fumiaki Kinoshita 2014";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/call";
      url = "";
      synopsis = "The call game engine";
      description = "Call is a minimalistic game engine that supports 2D/3D graphics and sounds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bindings-portaudio" or (buildDepError "bindings-portaudio"))
          (hsPkgs."boundingboxes" or (buildDepError "boundingboxes"))
          (hsPkgs."clean-unions" or (buildDepError "clean-unions"))
          (hsPkgs."colors" or (buildDepError "colors"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."control-bool" or (buildDepError "control-bool"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."elevator" or (buildDepError "elevator"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."freetype2" or (buildDepError "freetype2"))
          (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."JuicyPixels-util" or (buildDepError "JuicyPixels-util"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."objective" or (buildDepError "objective"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."WAVE" or (buildDepError "WAVE"))
          (hsPkgs."minioperational" or (buildDepError "minioperational"))
          ];
        };
      exes = {
        "hello-world" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."call" or (buildDepError "call"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ];
          };
        };
      };
    }