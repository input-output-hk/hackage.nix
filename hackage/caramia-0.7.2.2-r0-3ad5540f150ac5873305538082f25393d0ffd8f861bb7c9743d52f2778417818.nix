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
    flags = { build-toys = false; fix-opengl21 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "caramia"; version = "0.7.2.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL"));
        buildable = true;
      };
      exes = {
        "smoke-test" = {
          depends = pkgs.lib.optionals (flags.build-toys) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caramia" or (errorHandler.buildDepError "caramia"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if flags.build-toys then true else false;
        };
        "memory-info" = {
          depends = pkgs.lib.optionals (flags.build-toys) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caramia" or (errorHandler.buildDepError "caramia"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          ];
          buildable = if flags.build-toys then true else false;
        };
        "gl-info" = {
          depends = pkgs.lib.optionals (flags.build-toys) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caramia" or (errorHandler.buildDepError "caramia"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          ];
          buildable = if flags.build-toys then true else false;
        };
        "query-objects" = {
          depends = pkgs.lib.optionals (flags.build-toys) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caramia" or (errorHandler.buildDepError "caramia"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if flags.build-toys then true else false;
        };
        "textures" = {
          depends = pkgs.lib.optionals (flags.build-toys) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caramia" or (errorHandler.buildDepError "caramia"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          ];
          buildable = if flags.build-toys then true else false;
        };
      };
      tests = {
        "buffer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caramia" or (errorHandler.buildDepError "caramia"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
        "shader" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caramia" or (errorHandler.buildDepError "caramia"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
        "texture" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caramia" or (errorHandler.buildDepError "caramia"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "color" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caramia" or (errorHandler.buildDepError "caramia"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }