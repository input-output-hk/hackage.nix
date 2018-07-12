{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "warp-tls";
          version = "3.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "HTTP over TLS support for Warp via the TLS package";
        description = "Support for SSL is now obsoleted.\nHTTP/2 can be negotiated by ALPN.\nAPI docs and the README are available at\n<http://www.stackage.org/package/warp-tls>.";
        buildType = "Simple";
      };
      components = {
        "warp-tls" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.data-default-class
            hsPkgs.tls
            hsPkgs.network
            hsPkgs.streaming-commons
          ];
        };
      };
    }