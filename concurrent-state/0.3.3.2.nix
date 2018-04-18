{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "concurrent-state";
          version = "0.3.3.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@joelt.io";
        author = "Joel Taylor";
        homepage = "https://github.com/joelteon/concurrent-state";
        url = "";
        synopsis = "MTL-like library using TVars";
        description = "State backed by TVar.";
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
      };
    }