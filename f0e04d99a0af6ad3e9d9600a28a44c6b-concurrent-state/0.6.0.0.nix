{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "concurrent-state";
          version = "0.6.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@joelt.io";
        author = "Joel Taylor";
        homepage = "https://github.com/joelteon/concurrent-state";
        url = "";
        synopsis = "MTL-like library using TVars";
        description = "Writer, State, RWS backed by TVar";
        buildType = "Simple";
      };
      components = {
        concurrent-state = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.transformers
          ];
        };
        exes = {
          chat-server = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.concurrent-state
              hsPkgs.network
              hsPkgs.stm
            ];
          };
        };
      };
    }