{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pipes-network";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "p.capriotti@gmail.com";
        author = "Paolo Capriotti";
        homepage = "https://github.com/pcapriotti/pipes-extra";
        url = "";
        synopsis = "Utilities to deal with sockets.";
        description = "Utilities to deal with sockets.";
        buildType = "Simple";
      };
      components = {
        pipes-network = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.pipes-core
            hsPkgs.bytestring
            hsPkgs.network
          ];
        };
      };
    }