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
        name = "sdl2-image";
        version = "0.1.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "cailei@live.com";
      author = "Cai Lei";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to sdl2-image.";
      description = "Haskell binding to sdl2-image.";
      buildType = "Simple";
    };
    components = {
      "sdl2-image" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.sdl2)
        ];
        libs = [ (pkgs.SDL2) ];
        pkgconfig = [
          (pkgconfPkgs.sdl2)
          (pkgconfPkgs.SDL2_image)
        ];
      };
    };
  }