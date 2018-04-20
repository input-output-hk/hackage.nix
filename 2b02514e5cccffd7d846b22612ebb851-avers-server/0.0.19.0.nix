{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "avers-server";
          version = "0.0.19.0";
        };
        license = "MIT";
        copyright = "2016 Tomas Carnecky";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "http://github.com/wereHamster/avers-server";
        url = "";
        synopsis = "Server implementation of the Avers API";
        description = "Server implementation of the Avers API";
        buildType = "Simple";
      };
      components = {
        avers-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.avers
            hsPkgs.avers-api
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.bytestring-conversion
            hsPkgs.containers
            hsPkgs.cookie
            hsPkgs.cryptonite
            hsPkgs.either
            hsPkgs.http-types
            hsPkgs.memory
            hsPkgs.mtl
            hsPkgs.resource-pool
            hsPkgs.rethinkdb-client-driver
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-websockets
            hsPkgs.websockets
          ];
        };
      };
    }