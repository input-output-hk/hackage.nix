{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      rev-proxy = true;
      tls = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mighttpd2";
          version = "2.8.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/proj/mighttpd/";
        url = "";
        synopsis = "High performance web server on WAI/warp";
        description = "High performance web server to handle static\nfiles and CGI on WAI/warp.\nReverse proxy functionality is also provided\nto connect web applications behind.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "mighty" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.date-cache
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.http-date
              hsPkgs.http-types
              hsPkgs.io-choice
              hsPkgs.network
              hsPkgs.network-conduit
              hsPkgs.old-locale
              hsPkgs.parsec
              hsPkgs.process-conduit
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.unix-time
              hsPkgs.unordered-containers
              hsPkgs.wai
              hsPkgs.wai-app-file-cgi
              hsPkgs.wai-logger
              hsPkgs.wai-logger-prefork
              hsPkgs.warp
            ] ++ pkgs.lib.optional _flags.rev-proxy hsPkgs.http-conduit) ++ pkgs.lib.optionals _flags.tls [
              hsPkgs.tls
              hsPkgs.warp-tls
            ];
          };
          "mkindex" = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.old-locale
              hsPkgs.directory
              hsPkgs.time
            ];
          };
          "mightyctl" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.process-conduit
              hsPkgs.unix
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.http-date
              hsPkgs.http-types
              hsPkgs.network
              hsPkgs.network-conduit
              hsPkgs.old-locale
              hsPkgs.parsec
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.unordered-containers
              hsPkgs.wai
              hsPkgs.wai-app-file-cgi
              hsPkgs.wai-logger
              hsPkgs.wai-logger-prefork
              hsPkgs.warp
              hsPkgs.hspec
            ] ++ pkgs.lib.optional _flags.rev-proxy hsPkgs.http-conduit) ++ pkgs.lib.optionals _flags.tls [
              hsPkgs.tls
              hsPkgs.warp-tls
            ];
          };
        };
      };
    }