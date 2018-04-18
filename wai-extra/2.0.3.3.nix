{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-extra";
          version = "2.0.3.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "Provides some basic WAI handlers and middleware.";
        description = "The goal here is to provide common features without many dependencies.";
        buildType = "Simple";
      };
      components = {
        wai-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.network
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.blaze-builder
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.case-insensitive
            hsPkgs.data-default
            hsPkgs.fast-logger
            hsPkgs.wai-logger
            hsPkgs.conduit
            hsPkgs.zlib-conduit
            hsPkgs.blaze-builder-conduit
            hsPkgs.ansi-terminal
            hsPkgs.resourcet
            hsPkgs.void
            hsPkgs.stringsearch
            hsPkgs.containers
            hsPkgs.base64-bytestring
            hsPkgs.word8
            hsPkgs.lifted-base
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai-extra
              hsPkgs.wai-test
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.wai
              hsPkgs.http-types
              hsPkgs.transformers
              hsPkgs.zlib
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.zlib-bindings
              hsPkgs.blaze-builder
              hsPkgs.data-default
              hsPkgs.conduit
              hsPkgs.fast-logger
              hsPkgs.resourcet
            ];
          };
        };
      };
    }