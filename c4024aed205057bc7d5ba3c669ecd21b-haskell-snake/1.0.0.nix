{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-snake";
          version = "1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Przemysław Kamiński <cgenie@gmail.com>";
        author = "";
        homepage = "https://github.com/CGenie/haskell-snake#readme";
        url = "";
        synopsis = "Snake game implemetation in Haskell using SDL2";
        description = "See README at <https://github.com/CGenie/haskell-snake>";
        buildType = "Simple";
      };
      components = {
        haskell-snake = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.linear
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.sdl2
            hsPkgs.sdl2-ttf
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        exes = {
          haskell-snake = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.haskell-snake
              hsPkgs.lens
              hsPkgs.linear
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.sdl2
              hsPkgs.sdl2-ttf
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
      };
    }