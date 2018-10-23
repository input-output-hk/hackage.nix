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
        name = "call";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Fumiaki Kinoshita 2014";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/call";
      url = "";
      synopsis = "The call game engine";
      description = "Call is a minimalistic game engine which supports 2D graphics and sounds.";
      buildType = "Simple";
    };
    components = {
      "call" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.control-bool)
          (hsPkgs.colors)
          (hsPkgs.linear)
          (hsPkgs.boundingboxes)
          (hsPkgs.template-haskell)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.reflection)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.GLFW-b)
          (hsPkgs.lens)
          (hsPkgs.OpenGL)
          (hsPkgs.OpenGLRaw)
          (hsPkgs.JuicyPixels)
          (hsPkgs.JuicyPixels-util)
          (hsPkgs.WAVE)
          (hsPkgs.freetype2)
          (hsPkgs.random)
          (hsPkgs.hashable)
          (hsPkgs.objective)
          (hsPkgs.bindings-portaudio)
        ];
      };
    };
  }