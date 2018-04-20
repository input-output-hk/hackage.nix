{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      containers03 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "GPipe";
          version = "1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tobias Bexelius";
        maintainer = "Tobias Bexelius";
        author = "Tobias Bexelius";
        homepage = "http://www.haskell.org/haskellwiki/GPipe";
        url = "http://hackage.haskell.org/package/GPipe";
        synopsis = "A functional graphics API for programmable GPUs";
        description = "GPipe models the entire graphics pipeline in a purely functional, immutable and typesafe way. It is built on top of the programmable pipeline (i.e. non-fixed function) of\nOpenGL 2.1 and uses features such as vertex buffer objects (VBO's), texture objects and GLSL shader code synthetisation to create fast graphics programs. Buffers,\ntextures and shaders are cached internally to ensure fast framerate, and GPipe is also capable of managing multiple windows and contexts. By creating your own\ninstances of GPipes classes, it's possible to use additional datatypes on the GPU.\n\nYou'll need full OpenGL 2.1 support, including GLSL 1.20 to use GPipe. Thanks to OpenGLRaw, you may still build GPipe programs on machines lacking this support.\n\nNote on installation: If you have cabal installed list-tries with flag containers03 (you should) then use the same flag when installing GPipe. This flag is false by default since it's\nfalse for list-tries as well, and I want Hackage to be able to build it.";
        buildType = "Simple";
      };
      components = {
        GPipe = {
          depends  = [
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.list-tries
            hsPkgs.GLUT
            hsPkgs.OpenGL
            hsPkgs.Boolean
            hsPkgs.Vec
            hsPkgs.Vec-Boolean
            hsPkgs.base
          ];
        };
      };
    }