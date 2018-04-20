{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rfc";
          version = "0.0.0.25";
        };
        license = "BSD-3-Clause";
        copyright = "(c)2018 Robert Fischer";
        maintainer = "smokejumperit+rfc@gmail.com";
        author = "Robert Fischer";
        homepage = "https://github.com/RobertFischer/rfc#README.md";
        url = "";
        synopsis = "Robert Fischer's Common library";
        description = "An enhanced Prelude and various utilities for Aeson, Servant, PSQL, and Redis that Robert Fischer uses.";
        buildType = "Simple";
      };
      components = {
        rfc = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.classy-prelude
            hsPkgs.uuid-types
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.text-conversions
            hsPkgs.data-default
            hsPkgs.lens
            hsPkgs.http-types
            hsPkgs.http-api-data
            hsPkgs.time-units
            hsPkgs.text
            hsPkgs.lifted-async
            hsPkgs.unliftio
            hsPkgs.unliftio-core
            hsPkgs.monad-control
            hsPkgs.natural-transformation
            hsPkgs.network-uri
            hsPkgs.attoparsec
            hsPkgs.resource-pool
            hsPkgs.time
            hsPkgs.aeson-diff
            hsPkgs.mtl
            hsPkgs.miso
            hsPkgs.url
            hsPkgs.mono-traversable
          ] ++ (if compiler.isGhcjs
            then [
              hsPkgs.aeson
              hsPkgs.bifunctors
              hsPkgs.servant
            ]
            else [
              hsPkgs.servant-server
              hsPkgs.servant
              hsPkgs.servant-docs
              hsPkgs.servant-blaze
              hsPkgs.blaze-html
              hsPkgs.wai
              hsPkgs.aeson
              hsPkgs.wai-extra
              hsPkgs.wai-cors
              hsPkgs.wai-cli
              hsPkgs.envy
              hsPkgs.postgresql-typed
              hsPkgs.hedis
              hsPkgs.simple-logger
              hsPkgs.temporary
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.wreq
              hsPkgs.servant-swagger
              hsPkgs.swagger2
              hsPkgs.markdown
              hsPkgs.servant-client
              hsPkgs.binary
              hsPkgs.network
              hsPkgs.warp
              hsPkgs.mtl
            ]);
        };
      };
    }