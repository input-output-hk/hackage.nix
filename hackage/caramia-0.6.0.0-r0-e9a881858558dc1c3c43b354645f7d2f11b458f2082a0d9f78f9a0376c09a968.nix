{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { build-toys = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "caramia";
        version = "0.6.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014 Mikko Juola";
      maintainer = "mikjuo@gmail.com";
      author = "Mikko Juola";
      homepage = "https://github.com/Noeda/caramia/";
      url = "";
      synopsis = "Less painful OpenGL 3.3 rendering";
      description = "This is a highish-level OpenGL bindings library for real-time graphics for\nHaskell, using OpenGL 3.3.\n\nRequirements:\n\n* GHC 7.8+\n\n* OpenGL 3.3\n\nYou need to use `-threaded` flag in executables that use this library.\n\nHere are the most important features of this library:\n\n* Safe and automatic finalization of OpenGL resources\n\n* No implicit state (that is, no glBind* mess or equivalent). There is a\nmonad for mass-rendering that has implicit state but the state is localized\nto running of that monad. (see Caramia.Render).\n\n* Only vanilla OpenGL 3.3 required. Some extensions will be used if they are\navailable.\n\nHere are some curious features that you might find useful.\n\n* This library plays nice with other OpenGL libraries. It does not mess up\nthe implicit OpenGL state (except for aforementioned rendering monad).\n\n* This library does not create an OpenGL context. You can use whatever\nlibrary you want to create an OpenGL context as long as it can get an\nOpenGL 3.3 context. You may be interested at looking at the tests in\nthis package to see how to use this with the `sdl2` package.\n\n* Operations are generalized over `MonadIO`. Works on top of pure `IO` and\nalso in your custom monad stacks, if they have `MonadIO` at bottom.\n\n(At least) the following OpenGL concepts are present in this library:\n\n* Buffer objects (you can do low-level mapping and use raw pointers)\n\n* Geometry, vertex and fragment shaders\n\n* Indexed and non-indexed rendering\n\n* Framebuffers\n\n* Textures (with many topologies, 1D, 2D, 3D, texture arrays, cube textures;\nwe also have buffer textures and multisampling textures)\n\n* Vertex array objects\n\n* Blending, stencil, depth and cull tests\n\n* Instanced rendering\n\n* Synchronization objects\n\n* Query objects\n\nSome notable missing features:\n\n* Tesselation shaders. This is an OpenGL 4.x feature but we could add it.\n\n* Using shaders with transform feedback.\n\n* Multi-threaded rendering.\n\nThis library tries to avoid including obsolete or redundant features of OpenGL.";
      buildType = "Simple";
    };
    components = {
      "caramia" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.gl)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."OpenGL");
      };
      exes = {
        "smoke-test" = {
          depends  = pkgs.lib.optionals (flags.build-toys) [
            (hsPkgs.base)
            (hsPkgs.caramia)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            (hsPkgs.text)
          ];
        };
        "memory-info" = {
          depends  = pkgs.lib.optionals (flags.build-toys) [
            (hsPkgs.base)
            (hsPkgs.caramia)
            (hsPkgs.sdl2)
          ];
        };
        "gl-info" = {
          depends  = pkgs.lib.optionals (flags.build-toys) [
            (hsPkgs.base)
            (hsPkgs.sdl2)
            (hsPkgs.OpenGLRaw)
          ];
        };
        "query-objects" = {
          depends  = pkgs.lib.optionals (flags.build-toys) [
            (hsPkgs.base)
            (hsPkgs.caramia)
            (hsPkgs.sdl2)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "textures" = {
          depends  = pkgs.lib.optionals (flags.build-toys) [
            (hsPkgs.base)
            (hsPkgs.caramia)
            (hsPkgs.sdl2)
          ];
        };
      };
    };
  }