{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "free-game";
          version = "0.3.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012-2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/free-game";
        url = "";
        synopsis = "Create graphical applications for free.";
        description = "Cross-platform GUI library based on free monads";
        buildType = "Simple";
      };
      components = {
        "free-game" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.free
            hsPkgs.freetype2
            hsPkgs.GLFW-b
            hsPkgs.hashable
            hsPkgs.JuicyPixels-repa
            hsPkgs.mtl
            hsPkgs.OpenGL
            hsPkgs.OpenGLRaw
            hsPkgs.random
            hsPkgs.repa
            hsPkgs.StateVar
            hsPkgs.transformers
            hsPkgs.vect
            hsPkgs.void
            hsPkgs.template-haskell
          ];
        };
      };
    }