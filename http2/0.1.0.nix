{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "http2";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "HTTP/2.0 library including HPACK";
        description = "HTTP/2.0 library including HPACK.\nCurrently only (coming) HPACK 06 is supported.\nUse Network.HPACK only.\nMany modules are exported for debugging\npurpose only. Please don't import them.";
        buildType = "Simple";
      };
      components = {
        http2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.hashtables
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
              hsPkgs.http2
              hsPkgs.hspec
            ];
          };
          hpack = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.unordered-containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.http2
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.hspec
            ];
          };
        };
      };
    }