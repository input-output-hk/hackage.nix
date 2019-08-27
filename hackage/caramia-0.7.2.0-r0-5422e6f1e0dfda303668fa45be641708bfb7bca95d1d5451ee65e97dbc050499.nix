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
    flags = { build-toys = false; fix-opengl21 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "caramia"; version = "0.7.2.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2014-2015 Mikko Juola";
      maintainer = "mikjuo@gmail.com";
      author = "Mikko Juola";
      homepage = "https://github.com/Noeda/caramia/";
      url = "";
      synopsis = "High-level OpenGL bindings";
      description = "This is a highish-level OpenGL bindings library for real-time graphics for\nHaskell, with minimum OpenGL version being 2.1.\n\nRequirements:\n\n* GHC 7.8+\n\n* OpenGL 2.1 (with some extensions)\n\nIf the target system has OpenGL 3.3, then all features in this library should\nbe available unless stated otherwise. OpenGL contexts with 3.x or later\nversions can be a core profile; this library does not care.\n\nYou need to use `-threaded` flag in executables that use this library.\n\nHere are the most important features of this library:\n\n* Safe and automatic finalization of OpenGL resources, with optional prompt\nfinalization.\n\n* No implicit state (that is, no glBind* mess or equivalent). There is a\nmonad for mass-rendering that has implicit state but the state is localized\nto running of that monad. (see Caramia.Render).\n\nHere are some curious features that you might find useful.\n\n* This library plays nice with other OpenGL libraries. It does not mess up\nthe implicit OpenGL state (except for aforementioned rendering monad).\n\n* This library does not create an OpenGL context. You can use whatever\nlibrary you want to create an OpenGL context as long as it can get an\nOpenGL 2.1 (or any later version) context. You may be interested at looking\nat the tests in this package to see how to use this with the `sdl2`\npackage.\n\n* Operations are generalized over `MonadIO`. Works on top of pure `IO` and\nalso in your custom monad stacks, as long as they implement `MonadIO`.\n\n(At least) the following OpenGL concepts are present in this library:\n\n* Buffer objects (you can do low-level mapping and use raw pointers)\n\n* Geometry, vertex and fragment shaders\n\n* Indexed and non-indexed rendering\n\n* Framebuffers\n\n* Textures (with many topologies, 1D, 2D, 3D, texture arrays, cube textures;\nwe also have buffer textures and multisampling textures)\n\n* Vertex array objects\n\n* Blending, stencil, depth and cull tests\n\n* Instanced rendering\n\n* Synchronization objects\n\n* Query objects\n\nThis library tries to avoid including obsolete or redundant features of OpenGL.\n\nNote that the library is in flux and API-breaking changes tend to happen\noften.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."gl" or (buildDepError "gl"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."OpenGL" or (sysDepError "OpenGL"));
        };
      exes = {
        "smoke-test" = {
          depends = (pkgs.lib).optionals (flags.build-toys) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."caramia" or (buildDepError "caramia"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "memory-info" = {
          depends = (pkgs.lib).optionals (flags.build-toys) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."caramia" or (buildDepError "caramia"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        "gl-info" = {
          depends = (pkgs.lib).optionals (flags.build-toys) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            ];
          };
        "query-objects" = {
          depends = (pkgs.lib).optionals (flags.build-toys) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."caramia" or (buildDepError "caramia"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "textures" = {
          depends = (pkgs.lib).optionals (flags.build-toys) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."caramia" or (buildDepError "caramia"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            ];
          };
        };
      tests = {
        "buffer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."caramia" or (buildDepError "caramia"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          };
        "shader" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."caramia" or (buildDepError "caramia"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          };
        "texture" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."caramia" or (buildDepError "caramia"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."sdl2" or (buildDepError "sdl2"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "color" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."caramia" or (buildDepError "caramia"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          };
        };
      };
    }