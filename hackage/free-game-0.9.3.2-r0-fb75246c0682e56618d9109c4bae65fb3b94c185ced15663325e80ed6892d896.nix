{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "free-game";
        version = "0.9.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2013 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/free-game";
      url = "";
      synopsis = "Create graphical applications for free";
      description = "Cross-platform GUI library based on free monads";
      buildType = "Simple";
    };
    components = {
      "free-game" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.free)
          (hsPkgs.repa)
          (hsPkgs.freetype2)
          (hsPkgs.GLFW-b)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.OpenGL)
          (hsPkgs.OpenGLRaw)
          (hsPkgs.profunctors)
          (hsPkgs.random)
          (hsPkgs.transformers)
          (hsPkgs.void)
          (hsPkgs.template-haskell)
          (hsPkgs.linear)
          (hsPkgs.vector)
          (hsPkgs.JuicyPixels-repa)
          (hsPkgs.data-default)
          (hsPkgs.colors)
        ];
      };
    };
  }