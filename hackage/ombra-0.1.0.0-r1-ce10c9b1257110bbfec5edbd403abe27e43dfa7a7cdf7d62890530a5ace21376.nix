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
    flags = { opengl = true; webgl = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ombra"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2016 Luca Prezzavento";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ziocroc\" Prezzavento";
      homepage = "https://github.com/ziocroc/Ombra";
      url = "";
      synopsis = "Render engine.";
      description = "Ombra is a render engine written in Haskell. It provides a purely functional interface for advanced graphics programming, including a type safe embedded DSL for GPU programming. You are not required to know or use OpenGL directly to work with Ombra, you just need a basic knowledge of what vertex/fragment shaders, uniforms and attributes are (if you are going to make a more advanced use of it). Ombra supports both OpenGL and WebGL.\n\n\nThe modules you generally need to use are:\n\n\"Graphics.Rendering.Ombra.D3\": 3D graphics\n\n\"Graphics.Rendering.Ombra.D2\": 2D graphics\n\n\"Graphics.Rendering.Ombra.Generic\": although both D3 and D2 export it, you may want to read the documentation\n\n\"Graphics.Rendering.Ombra.Shader\": for creating shaders\n\n\"Graphics.Rendering.Ombra.Draw\": this lets you render the pure objects you create with D2/D3/Generic\n\n\"Graphics.Rendering.Ombra.Texture\": for creating textures";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vect" or (buildDepError "vect"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          ] ++ (pkgs.lib).optional (flags.opengl && !(compiler.isGhcjs && true)) (hsPkgs."gl" or (buildDepError "gl"))) ++ (pkgs.lib).optional (flags.webgl && (compiler.isGhcjs && true)) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"));
        };
      };
    }