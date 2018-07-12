{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-http2-extra";
          version = "0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "kazu@iij.ad.jp";
        author = "Kazu Yamamoto";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "WAI utilities for HTTP/2";
        description = "WAI utilities for HTTP/2";
        buildType = "Simple";
      };
      components = {
        "wai-http2-extra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.auto-update
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.http-types
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.word8
          ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }