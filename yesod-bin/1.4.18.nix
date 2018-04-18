{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-bin";
          version = "1.4.18";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "The yesod helper executable.";
        description = "Provides scaffolding, devel server, and some simple code generation helpers.";
        buildType = "Simple";
      };
      components = {
        exes = {
          yesod-ghc-wrapper = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
            ];
          };
          yesod-ld-wrapper = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
            ];
          };
          yesod-ar-wrapper = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
            ];
          };
          yesod = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.parsec
              hsPkgs.text
              hsPkgs.shakespeare
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.template-haskell
              hsPkgs.directory
              hsPkgs.Cabal
              hsPkgs.unix-compat
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.http-types
              hsPkgs.blaze-builder
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.zlib
              hsPkgs.tar
              hsPkgs.unordered-containers
              hsPkgs.yaml
              hsPkgs.optparse-applicative
              hsPkgs.fsnotify
              hsPkgs.split
              hsPkgs.file-embed
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.resourcet
              hsPkgs.base64-bytestring
              hsPkgs.lifted-base
              hsPkgs.http-reverse-proxy
              hsPkgs.network
              hsPkgs.http-conduit
              hsPkgs.http-client
              hsPkgs.project-template
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.data-default-class
              hsPkgs.streaming-commons
              hsPkgs.warp-tls
              hsPkgs.async
              hsPkgs.deepseq
            ];
          };
        };
      };
    }