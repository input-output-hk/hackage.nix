{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "http-conduit-downloader";
          version = "1.0.13";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Vladimir Shabanov <vshabanoff@gmail.com>";
        author = "Vladimir Shabanov <vshabanoff@gmail.com>";
        homepage = "https://github.com/bazqux/http-conduit-downloader";
        url = "";
        synopsis = "HTTP downloader tailored for web-crawler needs.";
        description = "HTTP/HTTPS downloader built on top of @http-conduit@\nand used in <https://bazqux.com> crawler.\n\n* Handles all possible http-conduit exceptions and returns\nhuman readable error messages.\n\n* Handles some web server bugs (returning 'deflate' data instead of 'gzip').\n\n* Ignores invalid SSL sertificates.\n\n* Receives data in 32k blocks internally to reduce memory fragmentation\non many parallel downloads.\n\n* Download timeout.\n\n* Total download size limit.\n\n* Returns HTTP headers for subsequent redownloads and handles\n'Not modified' results.\n\n* Can be used with external DNS resolver (hsdns-cache for example).";
        buildType = "Simple";
      };
      components = {
        "http-conduit-downloader" = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.http-client
            hsPkgs.connection
            hsPkgs.network
            hsPkgs.zlib
            hsPkgs.lifted-base
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.http-types
            hsPkgs.tls
            hsPkgs.data-default
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
      };
    }