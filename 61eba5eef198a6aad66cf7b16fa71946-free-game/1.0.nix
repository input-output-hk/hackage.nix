{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "free-game";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012-2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/free-game";
        url = "";
        synopsis = "Create games for free";
        description = "free-game defines a monad that integrates features to create 2D games.\n\nA simple playback and effectors will be supported in future versions.\n\nTwitter: #hs_free_game";
        buildType = "Simple";
      };
      components = {
        "free-game" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.colors
            hsPkgs.containers
            hsPkgs.control-bool
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.free
            hsPkgs.freetype2
            hsPkgs.GLFW-b
            hsPkgs.hashable
            hsPkgs.JuicyPixels
            hsPkgs.JuicyPixels-repa
            hsPkgs.linear
            hsPkgs.mtl
            hsPkgs.OpenGL
            hsPkgs.OpenGLRaw
            hsPkgs.random
            hsPkgs.reflection
            hsPkgs.repa
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.void
          ];
        };
      };
    }