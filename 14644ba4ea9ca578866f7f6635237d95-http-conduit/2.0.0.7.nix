{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "http-conduit";
          version = "2.0.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/http-conduit";
        url = "";
        synopsis = "HTTP client package with conduit interface and HTTPS support.";
        description = "This package uses conduit for parsing the actual contents of the HTTP connection. It also provides higher-level functions which allow you to avoid directly dealing with streaming data. See <http://www.yesodweb.com/book/http-conduit> for more information.\n\nThe @Network.HTTP.Conduit.Browser@ module has been moved to <http://hackage.haskell.org/package/http-conduit-browser/>\n\nThe @Network.HTTP.Conduit.MultipartFormData@ module has been moved to <http://hackage.haskell.org/package/http-client-multipart/>";
        buildType = "Simple";
      };
      components = {
        "http-conduit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.resourcet
            hsPkgs.conduit
            hsPkgs.http-types
            hsPkgs.lifted-base
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-client-conduit
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.data-default-class
              hsPkgs.connection
              hsPkgs.warp-tls
              hsPkgs.time
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.conduit
              hsPkgs.utf8-string
              hsPkgs.case-insensitive
              hsPkgs.lifted-base
              hsPkgs.network
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.http-types
              hsPkgs.cookie
              hsPkgs.network-conduit
              hsPkgs.http-client
              hsPkgs.http-conduit
              hsPkgs.http-client-multipart
            ];
          };
        };
      };
    }