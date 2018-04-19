{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http2";
          version = "0.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "HTTP/2.0 library including frames and HPACK";
        description = "HTTP/2.0 library including frames and HPACK.\nCurrently HTTP/2 16 framing and HPACK 10 is supported.";
        buildType = "Simple";
      };
      components = {
        http2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.PSQueue
            hsPkgs.array
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          hpack-encode = {
            depends  = [
              hsPkgs.base
              hsPkgs.PSQueue
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.array
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hex
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.word8
            ];
          };
          hpack-debug = {
            depends  = [
              hsPkgs.base
              hsPkgs.PSQueue
              hsPkgs.aeson
              hsPkgs.array
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hex
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.word8
            ];
          };
          hpack-stat = {
            depends  = [
              hsPkgs.base
              hsPkgs.PSQueue
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.array
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.word8
            ];
          };
          frame-encode = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.hex
              hsPkgs.http2
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
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
              hsPkgs.PSQueue
              hsPkgs.array
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hex
              hsPkgs.hspec
              hsPkgs.unordered-containers
              hsPkgs.word8
            ];
          };
          hpack = {
            depends  = [
              hsPkgs.base
              hsPkgs.PSQueue
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.array
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hex
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.word8
            ];
          };
          frame = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hex
              hsPkgs.hspec
              hsPkgs.http2
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }