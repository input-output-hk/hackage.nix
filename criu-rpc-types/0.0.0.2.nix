{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.24";
        identifier = {
          name = "criu-rpc-types";
          version = "0.0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "wayofthepie@gmail.com";
        author = "wayofthepie";
        homepage = "https://github.com/wayofthepie/haskell-criu-rpc-types";
        url = "";
        synopsis = "Criu RPC protocol buffer types.";
        description = "Types and lenses for the CRIU RPC API generated using proto-lens.";
        buildType = "Custom";
      };
      components = {
        criu-rpc-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.proto-lens
            hsPkgs.proto-lens-protoc
          ];
        };
      };
    }