{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "piyo";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 peus";
      maintainer = "opyapeus@gmail.com";
      author = "peus";
      homepage = "https://github.com/opyapeus/piyo#readme";
      url = "";
      synopsis = "Haskell game engine like fantasy console.";
      description = "Please see the README on GitHub at <https://github.com/opyapeus/piyo#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.extra)
          (hsPkgs.sdl2)
          (hsPkgs.sdl2-gfx)
          (hsPkgs.sdl2-image)
          (hsPkgs.sdl2-mixer)
          (hsPkgs.sdl2-ttf)
          (hsPkgs.text)
        ];
      };
      exes = {
        "piyo-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.extra)
            (hsPkgs.piyo)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-gfx)
            (hsPkgs.sdl2-image)
            (hsPkgs.sdl2-mixer)
            (hsPkgs.sdl2-ttf)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "piyo-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.extra)
            (hsPkgs.piyo)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-gfx)
            (hsPkgs.sdl2-image)
            (hsPkgs.sdl2-mixer)
            (hsPkgs.sdl2-ttf)
            (hsPkgs.text)
          ];
        };
      };
    };
  }