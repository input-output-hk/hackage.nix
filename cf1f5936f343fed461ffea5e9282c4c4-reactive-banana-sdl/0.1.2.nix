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
      specVersion = "1.6";
      identifier = {
        name = "reactive-banana-sdl";
        version = "0.1.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jpmoresmau@gmail.com";
      author = "R. Kyle Murphy, JP Moresmau";
      homepage = "https://github.com/JPMoresmau/reactive-banana-sdl";
      url = "";
      synopsis = "Reactive Banana bindings for SDL";
      description = "Provides bindings and convenience functions for using reactive banana with SDL.";
      buildType = "Simple";
    };
    components = {
      "reactive-banana-sdl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.reactive-banana)
          (hsPkgs.SDL)
          (hsPkgs.SDL-ttf)
          (hsPkgs.data-lens)
          (hsPkgs.data-lens-template)
          (hsPkgs.SDL-image)
        ];
      };
    };
  }