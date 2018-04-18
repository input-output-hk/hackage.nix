{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-subscriber";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Robert Klotzner";
        maintainer = "robert Dot klotzner A T gmx Dot at";
        author = "Robert Klotzner";
        homepage = "http://github.com/eskimor/servant-subscriber#readme";
        url = "";
        synopsis = "When REST is not enough ...";
        description = "Please see Readme.md";
        buildType = "Simple";
      };
      components = {
        servant-subscriber = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.network-uri
            hsPkgs.servant
            hsPkgs.servant-foreign
            hsPkgs.servant-server
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-websockets
            hsPkgs.warp
            hsPkgs.websockets
          ];
        };
        exes = {
          psGenerator = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant-subscriber
              hsPkgs.purescript-bridge
            ];
          };
        };
        tests = {
          servant-subscriber-test = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-compat
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.blaze-html
              hsPkgs.blaze-markup
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.http-media
              hsPkgs.lucid
              hsPkgs.mtl
              hsPkgs.servant-foreign
              hsPkgs.servant-server
              hsPkgs.servant-subscriber
              hsPkgs.string-conversions
              hsPkgs.time
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.hspec
            ];
          };
        };
      };
    }