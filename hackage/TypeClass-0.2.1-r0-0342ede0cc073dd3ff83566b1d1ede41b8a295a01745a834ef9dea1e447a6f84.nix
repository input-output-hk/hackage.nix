{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "TypeClass";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jpmoresmau@gmail.com";
      author = "JP Moresmau";
      homepage = "";
      url = "";
      synopsis = "Typing speed game";
      description = "A simple game where you need to type the letters scrolling down the screen before they reach the bottom. Using SDL and SDL_ttf.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "TypeClass" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.SDL)
            (hsPkgs.SDL-ttf)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.reactive-banana)
            (hsPkgs.reactive-banana-sdl)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }