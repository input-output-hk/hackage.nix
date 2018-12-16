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
        name = "gelatin-sdl2";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "schell@takt.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/gelatin";
      url = "";
      synopsis = "An SDL2 backend for the gelatin renderer.";
      description = "Using SDL2 this package provides a backend to\ngelatin, an EDSL rendering pictures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.sdl2)
          (hsPkgs.gelatin-gl)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "gelatin-sdl2-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gelatin-sdl2)
            (hsPkgs.sdl2)
            (hsPkgs.filepath)
            (hsPkgs.either)
          ];
        };
      };
    };
  }