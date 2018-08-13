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
      specVersion = "1.10";
      identifier = {
        name = "sdl2-sprite";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/sdl2-sprite#readme";
      url = "";
      synopsis = "Sprite previewer/animator";
      description = "View your sprites in an animated way with SDL2";
      buildType = "Simple";
    };
    components = {
      "sdl2-sprite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.sdl2)
          (hsPkgs.sdl2-image)
        ];
      };
      exes = {
        "sdl2-sprite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sdl2-sprite)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-image)
            (hsPkgs.optparse-simple)
            (hsPkgs.text)
            (hsPkgs.split)
          ];
        };
      };
    };
  }