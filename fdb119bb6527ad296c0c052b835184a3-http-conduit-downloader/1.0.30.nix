{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "http-conduit-downloader";
        version = "1.0.30";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vladimir Shabanov <vshabanoff@gmail.com>";
      author = "Vladimir Shabanov <vshabanoff@gmail.com>";
      homepage = "https://github.com/bazqux/http-conduit-downloader";
      url = "";
      synopsis = "HTTP downloader tailored for web-crawler needs.";
      description = "HTTP/HTTPS downloader built on top of @http-conduit@\nand used in <https://bazqux.com> crawler.\n\n* Handles all possible http-conduit exceptions and returns\nhuman readable error messages.\n\n* Handles some web server bugs (returning 'deflate' data instead of 'gzip',\ninvalid 'gzip' encoding).\n\n* Uses OpenSSL instead of 'tls' package (since 'tls' doesn't handle all sites).\n\n* Ignores invalid SSL sertificates.\n\n* Receives data in 32k chunks internally to reduce memory fragmentation\non many parallel downloads.\n\n* Download timeout.\n\n* Total download size limit.\n\n* Returns HTTP headers for subsequent redownloads and handles\n'Not modified' results.\n\n* Can be used with external DNS resolver (e.g. concurrent-dns-cache).";
      buildType = "Simple";
    };
    components = {
      "http-conduit-downloader" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client)
          (hsPkgs.connection)
          (hsPkgs.zlib)
          (hsPkgs.lifted-base)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.http-types)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.network-uri)
          (hsPkgs.network)
        ];
      };
    };
  }