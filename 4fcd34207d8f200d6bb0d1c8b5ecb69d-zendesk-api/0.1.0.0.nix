{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zendesk-api";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "denisovenator@gmail.com";
        author = "Victor Denisov";
        homepage = "https://github.com/VictorDenisov/zendesk-api";
        url = "";
        synopsis = "Zendesk API for Haskell programming language.";
        description = "This is a library for accessing zendesk api using haskell bindings.";
        buildType = "Simple";
      };
      components = {
        zendesk-api = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.conduit
            hsPkgs.connection
            hsPkgs.data-default
            hsPkgs.failure
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.pem
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.tls
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.x509
            hsPkgs.x509-store
            hsPkgs.x509-validation
          ];
        };
      };
    }