{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      rev-proxy = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-app-file-cgi";
          version = "0.8.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/proj/mighttpd/";
        url = "";
        synopsis = "File/CGI/Rev Proxy App of WAI";
        description = "This WAI application library handles static files,\nexecutes CGI scripts, and serves as a reverse proxy.";
        buildType = "Simple";
      };
      components = {
        "wai-app-file-cgi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.attoparsec-conduit
            hsPkgs.blaze-builder
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.date-cache
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-date
            hsPkgs.http-types
            hsPkgs.io-choice
            hsPkgs.lifted-base
            hsPkgs.mime-types
            hsPkgs.network
            hsPkgs.process
            hsPkgs.resourcet
            hsPkgs.static-hash
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.wai
            hsPkgs.wai-logger
            hsPkgs.word8
          ] ++ pkgs.lib.optional _flags.rev-proxy hsPkgs.http-conduit;
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
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