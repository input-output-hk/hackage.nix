{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      experiments = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "pang-a-lambda";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez";
        homepage = "";
        url = "";
        synopsis = "A super-pang clone";
        description = "An FRP implementation of superpang";
        buildType = "Simple";
      };
      components = {
        exes = {
          "pang-a-lambda-dumbplayer" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SDL
              hsPkgs.SDL-gfx
              hsPkgs.Yampa
            ];
          };
          "pang-a-lambda-arrowup" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SDL
              hsPkgs.SDL-gfx
              hsPkgs.Yampa
            ];
          };
          "pang-a-lambda-stickyarrow" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SDL
              hsPkgs.SDL-gfx
              hsPkgs.Yampa
            ];
          };
          "pang-a-lambda-player" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SDL
              hsPkgs.SDL-gfx
              hsPkgs.Yampa
            ];
          };
          "pang-a-lambda-physics" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.IfElse
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.Yampa
              hsPkgs.SDL
              hsPkgs.SDL-gfx
              hsPkgs.SDL-ttf
            ];
          };
          "pang-a-lambda-circlingboxes" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SDL
              hsPkgs.Yampa
            ];
          };
          "pang-a-lambda-splittingboxes" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SDL
              hsPkgs.Yampa
            ];
          };
          "pang-a-lambda-split" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SDL
              hsPkgs.Yampa
            ];
          };
          "pang-a-lambda-splitballs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.IfElse
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.Yampa
              hsPkgs.SDL
              hsPkgs.SDL-gfx
              hsPkgs.SDL-ttf
            ];
          };
          "pang-a-lambda" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.IfElse
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.Yampa
              hsPkgs.SDL
              hsPkgs.SDL-gfx
              hsPkgs.SDL-ttf
            ];
          };
        };
      };
    }