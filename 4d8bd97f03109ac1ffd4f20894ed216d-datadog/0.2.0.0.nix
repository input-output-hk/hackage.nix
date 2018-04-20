{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "datadog";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@iankduncan.com";
        author = "Ian Duncan";
        homepage = "https://github.com/iand675/datadog";
        url = "";
        synopsis = "Datadog client for Haskell. Supports both the HTTP API and StatsD.";
        description = "";
        buildType = "Simple";
      };
      components = {
        datadog = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.auto-update
            hsPkgs.base
            hsPkgs.buffer-builder
            hsPkgs.bytestring
            hsPkgs.dlist
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          datadog-api-test = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.auto-update
              hsPkgs.base
              hsPkgs.buffer-builder
              hsPkgs.bytestring
              hsPkgs.dlist
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-types
              hsPkgs.lens
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.network
              hsPkgs.old-locale
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers-base
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.network
              hsPkgs.lens
              hsPkgs.random
              hsPkgs.text
              hsPkgs.time
              hsPkgs.datadog
            ];
          };
        };
      };
    }