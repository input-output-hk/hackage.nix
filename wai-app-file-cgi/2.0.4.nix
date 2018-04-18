{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-app-file-cgi";
          version = "2.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/proj/mighttpd/";
        url = "";
        synopsis = "File/CGI/Rev Proxy App of WAI";
        description = "This WAI application library handles static files,\nexecutes CGI scripts, and serves as a reverse proxy\n(including EventSource).";
        buildType = "Simple";
      };
      components = {
        wai-app-file-cgi = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.attoparsec-conduit
            hsPkgs.blaze-builder
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-client
            hsPkgs.http-conduit
            hsPkgs.http-date
            hsPkgs.http-types
            hsPkgs.io-choice
            hsPkgs.lifted-base
            hsPkgs.mime-types
            hsPkgs.network
            hsPkgs.process
            hsPkgs.sockaddr
            hsPkgs.static-hash
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.wai
            hsPkgs.word8
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.http-types
              hsPkgs.unix
              hsPkgs.wai
              hsPkgs.wai-app-file-cgi
              hsPkgs.warp
              hsPkgs.HTTP
            ];
          };
        };
      };
    }