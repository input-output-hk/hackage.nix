{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network-conduit-tls";
          version = "0.6.0.1";
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
        "network-conduit-tls" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yaml
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
          ];
        };
      };
    }