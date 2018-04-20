{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "warp-tls";
          version = "1.3.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "SSL support for Warp via the TLS package";
        description = "SSL support for Warp via the TLS package";
        buildType = "Simple";
      };
      components = {
        warp-tls = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.transformers
            hsPkgs.conduit
            hsPkgs.network-conduit
            hsPkgs.certificate
            hsPkgs.pem
            hsPkgs.cryptocipher
            hsPkgs.tls-extra
            hsPkgs.tls
            hsPkgs.crypto-api
            hsPkgs.network
          ];
        };
      };
    }