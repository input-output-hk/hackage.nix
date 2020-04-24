{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-toys = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "caramia"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 Mikko Juola";
      maintainer = "mikjuo@gmail.com";
      author = "Mikko Juola";
      homepage = "https://github.com/Noeda/caramia/";
      url = "";
      synopsis = "Less painful OpenGL 3.3 rendering";
      description = "This is an experimental OpenGL bindings library for real-time graphics for\nHaskell, using OpenGL 3.3.\n\nRequirements:\n\n* GHC 7.6+\n\n* OpenGL 3.3\n\nYou need to use `-threaded` flag in executables that use this library.\n\nHere are the most important features of this library:\n\n* Safe and automatic finalization of OpenGL resources\n\n* No implicit state (that is, no glBind* mess or equivalent). There is a\nmonad for mass-rendering that has implicit state but the state is localized\nto running of that monad. (see Caramia.Render).\n\n* Only vanilla OpenGL 3.3 required. Some extensions will be used if they are\navailable.\n\nHere are some curious features that you might find useful.\n\n* This library plays nice with other OpenGL libraries. It does not mess up\nthe implicit OpenGL state (except for aforementioned rendering monad).\n\n* This library does not create an OpenGL context. You can use whatever\nlibrary you want to create an OpenGL context as long as it can get an\nOpenGL 3.3 context. You may be interested at looking at the tests in\nthis package to see how to use this with the `sdl2` package.\n\n* Operations are generalized over `MonadIO`. Works on top of pure `IO` and\nalso in your custom monad stacks, if they have `MonadIO` at bottom.\n\n(At least) the following OpenGL concepts are present in this library:\n\n* Buffer objects (you can do low-level mapping and use raw pointers)\n\n* Geometry, vertex and fragment shaders\n\n* Indexed and non-indexed rendering\n\n* Framebuffers\n\n* Textures (with many topologies, 1D, 2D, 3D, texture arrays, cube textures;\nwe also have buffer textures and multisampling textures)\n\n* Vertex array objects\n\n* Blending, stencil, depth and cull tests\n\n* Instanced rendering\n\n* Synchronization objects\n\n* Query objects\n\nSome notable missing features:\n\n* Tesselation shaders. This is an OpenGL 4.x feature but we could add it.\n\n* Using shaders with transform feedback.\n\n* Multi-threaded rendering.\n\nThis library tries to avoid including obsolete or redundant features of OpenGL.\n\nOne major flaw(?) of this library is that OpenGL resources cannot be easily\nreleased promptly. This may or may not be a problem for you. OpenGL resources\nmay refer to each other behind the scenes so if we implement a mechanism to\nrelease resources early, this mechanism needs to take care of resources\nreferring to each other.\n\nExpect bugs. While this library has been tested in some of the author's toy\nprograms, the library currently lacks automatic tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."OpenGL" or ((hsPkgs.pkgs-errors).sysDepError "OpenGL"));
        buildable = true;
        };
      exes = {
        "smoke-test" = {
          depends = (pkgs.lib).optionals (flags.build-toys) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."caramia" or ((hsPkgs.pkgs-errors).buildDepError "caramia"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if flags.build-toys then true else false;
          };
        "memory-info" = {
          depends = (pkgs.lib).optionals (flags.build-toys) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."caramia" or ((hsPkgs.pkgs-errors).buildDepError "caramia"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            ];
          buildable = if flags.build-toys then true else false;
          };
        "gl-info" = {
          depends = (pkgs.lib).optionals (flags.build-toys) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
            ];
          buildable = if flags.build-toys then true else false;
          };
        "query-objects" = {
          depends = (pkgs.lib).optionals (flags.build-toys) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."caramia" or ((hsPkgs.pkgs-errors).buildDepError "caramia"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if flags.build-toys then true else false;
          };
        "textures" = {
          depends = (pkgs.lib).optionals (flags.build-toys) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."caramia" or ((hsPkgs.pkgs-errors).buildDepError "caramia"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            ];
          buildable = if flags.build-toys then true else false;
          };
        };
      };
    }