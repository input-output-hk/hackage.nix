{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      example = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sdl2-gfx";
        version = "0.2";
      };
      license = "MIT";
      copyright = "Copyright © 2015 Siniša Biđin";
      maintainer = "Siniša Biđin <sinisa@bidin.eu>";
      author = "Siniša Biđin <sinisa@bidin.eu>";
      homepage = "";
      url = "";
      synopsis = "Bindings to SDL2_gfx.";
      description = "Haskell bindings to SDL2_gfx.";
      buildType = "Simple";
    };
    components = {
      "sdl2-gfx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lifted-base)
          (hsPkgs.linear)
          (hsPkgs.monad-control)
          (hsPkgs.sdl2)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
        pkgconfig = [
          (pkgconfPkgs.sdl2)
          (pkgconfPkgs.SDL2_gfx)
        ];
      };
      exes = {
        "sdl2-gfx-example" = {
          depends  = pkgs.lib.optionals (_flags.example) [
            (hsPkgs.base)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            (hsPkgs.sdl2-gfx)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }