{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-static";
          version = "1.2.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>, Greg Weber <greg@gregweber.info>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Static file serving subsite for Yesod Web Framework.";
        description = "Static file serving subsite for Yesod Web Framework.";
        buildType = "Simple";
      };
      components = {
        yesod-static = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.old-time
            hsPkgs.yesod-core
            hsPkgs.base64-bytestring
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.wai-app-static
            hsPkgs.wai
            hsPkgs.text
            hsPkgs.file-embed
            hsPkgs.http-types
            hsPkgs.unix-compat
            hsPkgs.conduit
            hsPkgs.crypto-conduit
            hsPkgs.cryptohash-cryptoapi
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.data-default
            hsPkgs.shakespeare-css
            hsPkgs.mime-types
            hsPkgs.hjsmin
            hsPkgs.process-conduit
            hsPkgs.filepath
            hsPkgs.resourcet
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.yesod-test
              hsPkgs.wai-test
              hsPkgs.HUnit
              hsPkgs.containers
              hsPkgs.old-time
              hsPkgs.yesod-core
              hsPkgs.base64-bytestring
              hsPkgs.cereal
              hsPkgs.bytestring
              hsPkgs.template-haskell
              hsPkgs.directory
              hsPkgs.transformers
              hsPkgs.wai-app-static
              hsPkgs.wai
              hsPkgs.text
              hsPkgs.file-embed
              hsPkgs.http-types
              hsPkgs.unix-compat
              hsPkgs.conduit
              hsPkgs.crypto-conduit
              hsPkgs.cryptohash-cryptoapi
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.data-default
              hsPkgs.shakespeare-css
              hsPkgs.mime-types
              hsPkgs.hjsmin
              hsPkgs.process-conduit
              hsPkgs.filepath
              hsPkgs.resourcet
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }