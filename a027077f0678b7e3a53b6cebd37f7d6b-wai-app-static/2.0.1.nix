{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      print = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-app-static";
          version = "2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/web-application-interface";
        url = "";
        synopsis = "WAI application for static serving";
        description = "Also provides some helper functions and datatypes for use outside of WAI.";
        buildType = "Simple";
      };
      components = {
        "wai-app-static" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.transformers
            hsPkgs.unix-compat
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.file-embed
            hsPkgs.text
            hsPkgs.blaze-builder
            hsPkgs.base64-bytestring
            hsPkgs.byteable
            hsPkgs.cryptohash
            hsPkgs.cryptohash-conduit
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.http-date
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.mime-types
            hsPkgs.unordered-containers
            hsPkgs.template-haskell
            hsPkgs.zlib
            hsPkgs.filepath
            hsPkgs.wai-extra
            hsPkgs.optparse-applicative
            hsPkgs.warp
          ];
        };
        exes = {
          "warp" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai-app-static
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.mime-types
            ];
          };
        };
        tests = {
          "runtests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.unix-compat
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.http-date
              hsPkgs.wai-app-static
              hsPkgs.wai-test
              hsPkgs.wai
              hsPkgs.http-types
              hsPkgs.network
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.mime-types
              hsPkgs.zlib
            ];
          };
        };
      };
    }