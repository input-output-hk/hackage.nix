{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "free-game";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/free-game";
      url = "";
      synopsis = "Create graphical applications for free.";
      description = "closs-platform GUI library based on free monads.";
      buildType = "Simple";
    };
    components = {
      "free-game" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.free)
          (hsPkgs.random)
          (hsPkgs.repa)
          (hsPkgs.JuicyPixels-repa)
          (hsPkgs.vect)
          (hsPkgs.array)
          (hsPkgs.filepath)
          (hsPkgs.stb-truetype)
          (hsPkgs.OpenGL)
          (hsPkgs.GLFW-b)
          (hsPkgs.StateVar)
        ];
      };
    };
  }