{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ethereum-analyzer-webui";
          version = "3.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "k_@berkeley.edu";
        author = "Kevin Chen";
        homepage = "https://github.com/zchn/ethereum-analyzer";
        url = "";
        synopsis = "A web frontend for ethereum-analyzer";
        description = "A web frontend for ethereum-analyzer.";
        buildType = "Simple";
      };
      components = {
        ethereum-analyzer-webui = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.ethereum-analyzer
            hsPkgs.exceptions
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.logging-effect
            hsPkgs.mtl
            hsPkgs.neat-interpolation
            hsPkgs.optparse-applicative
            hsPkgs.prometheus-client
            hsPkgs.prometheus-metrics-ghc
            hsPkgs.protolude
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.text
            hsPkgs.time
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.warp
            hsPkgs.wl-pprint-text
          ];
        };
        exes = {
          ethereum-analyzer-webui = {
            depends  = [
              hsPkgs.base
              hsPkgs.ethereum-analyzer
              hsPkgs.ethereum-analyzer-deps
              hsPkgs.ethereum-analyzer-webui
              hsPkgs.hflags
              hsPkgs.monad-logger
            ];
          };
        };
      };
    }