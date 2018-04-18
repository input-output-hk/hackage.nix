{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "warp-tls";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
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
            hsPkgs.certificate
            hsPkgs.cryptocipher
            hsPkgs.tls-extra
            hsPkgs.tls
            hsPkgs.crypto-api
            hsPkgs.network
          ];
        };
      };
    }