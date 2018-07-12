{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nakadi-client";
          version = "0.4.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2017 Moritz Schulte";
        maintainer = "mtesseract@silverratio.net";
        author = "Moritz Schulte";
        homepage = "https://github.com/mtesseract/nakadi-haskell#readme";
        url = "";
        synopsis = "Client library for the Nakadi Event Broker";
        description = "This package implements a client library for interacting with the Nakadi event broker system developed by Zalando.";
        buildType = "Simple";
      };
      components = {
        "nakadi-client" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-casing
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.iso8601-time
            hsPkgs.lens
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.retry
            hsPkgs.safe-exceptions
            hsPkgs.scientific
            hsPkgs.split
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.uuid
            hsPkgs.vector
          ];
        };
        tests = {
          "nakadi-client-test-suite" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-casing
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.classy-prelude
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.iso8601-time
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.monad-logger
              hsPkgs.mtl
              hsPkgs.nakadi-client
              hsPkgs.random
              hsPkgs.resourcet
              hsPkgs.retry
              hsPkgs.safe-exceptions
              hsPkgs.say
              hsPkgs.scientific
              hsPkgs.split
              hsPkgs.stm
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.uuid
              hsPkgs.vector
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
      };
    }