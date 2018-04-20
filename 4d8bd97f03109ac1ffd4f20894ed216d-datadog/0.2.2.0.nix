{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "datadog";
          version = "0.2.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Ian Duncan <ian@iankduncan.com>, Kostiantyn Rybnikov <k-bx@k-bx.com>";
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
              hsPkgs.Cabal
              hsPkgs.aeson
              hsPkgs.auto-update
              hsPkgs.base
              hsPkgs.buffer-builder
              hsPkgs.bytestring
              hsPkgs.datadog
              hsPkgs.dlist
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-types
              hsPkgs.lens
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.network
              hsPkgs.old-locale
              hsPkgs.random
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers-base
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }