{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "free-game";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/free-game";
      url = "";
      synopsis = "Create graphical applications for free.";
      description = "Create something graphical with useful free monads.\n\n/Small instruction/\n\n* load your image by loadBitmapFromFile, embedIO, and loadPicture.\n\n* describe an application using drawPicture, askInput, tick, and so on, in Game monad.\n\n* apply `runGame defaultGameParam` to run.\n\n* That's all!\n\nThere are experimental implementation of text rendering, but it yields strange pictures.";
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