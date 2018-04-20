{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dual-game";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "francygazz@gmail.com";
        author = "Francesco Gazzetta";
        homepage = "https://github.com/fgaz/dual";
        url = "";
        synopsis = "Network multiplayer 2D shooting game";
        description = "Network multiplayer 2D shooting game inspired from \"dual\"\nfor Andriod.\nStart the server with @dual <port>@\nand the client with @dual <server ip> <server port>@";
        buildType = "Simple";
      };
      components = {
        exes = {
          dual = {
            depends  = [
              hsPkgs.base
              hsPkgs.websockets
              hsPkgs.cereal
              hsPkgs.gloss
              hsPkgs.bifunctors
              hsPkgs.network
            ];
          };
        };
      };
    }