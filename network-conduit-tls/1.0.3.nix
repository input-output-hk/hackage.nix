{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network-conduit-tls";
          version = "1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Create TLS-aware network code with conduits";
        description = "Uses the tls package for a pure-Haskell implementation.";
        buildType = "Simple";
      };
      components = {
        network-conduit-tls = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.bytestring
            hsPkgs.certificate
            hsPkgs.pem
            hsPkgs.tls
            hsPkgs.network-conduit
            hsPkgs.conduit
            hsPkgs.network
            hsPkgs.transformers
            hsPkgs.tls-extra
            hsPkgs.crypto-api
            hsPkgs.crypto-random-api
            hsPkgs.cprng-aes
            hsPkgs.connection
            hsPkgs.monad-control
            hsPkgs.data-default
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.conduit
              hsPkgs.network-conduit
              hsPkgs.connection
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.network-conduit-tls
              hsPkgs.bytestring
              hsPkgs.HUnit
            ];
          };
        };
      };
    }