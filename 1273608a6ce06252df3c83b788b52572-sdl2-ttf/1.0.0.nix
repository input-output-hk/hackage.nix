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
        name = "sdl2-ttf";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Rongcui Dong (karl_1702@188.com)";
      author = "Ömer Sinan Ağacan (omeragacan@gmail.com)\n, Sean Chalmers (sclhiannan@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL2-ttf";
      description = "Haskell bindings to the sdl2-ttf C++ library <http://www.libsdl.org/projects/SDL_ttf/>.";
      buildType = "Simple";
    };
    components = {
      "sdl2-ttf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.sdl2)
          (hsPkgs.transformers)
        ];
        libs = [
          (pkgs."SDL2")
          (pkgs."SDL2_ttf")
        ];
      };
      exes = {
        "font-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-ttf)
            (hsPkgs.linear)
          ];
        };
      };
    };
  }