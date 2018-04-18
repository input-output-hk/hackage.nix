{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kraken";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "Kraken.io API client";
        description = "Kraken is a robust, ultra-fast image optimizer and compressor with\nbest-in-class algorithms.";
        buildType = "Simple";
      };
      components = {
        kraken = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.aeson
            hsPkgs.mtl
          ];
        };
      };
    }