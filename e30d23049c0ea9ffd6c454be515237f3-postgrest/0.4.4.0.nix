{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      ci = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postgrest";
          version = "0.4.4.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "cred+github@begriffs.com";
        author = "Joe Nelson, Adam Baker";
        homepage = "https://github.com/begriffs/postgrest";
        url = "";
        synopsis = "REST API for any Postgres database";
        description = "Reads the schema of a PostgreSQL database and creates RESTful routes\nfor the tables and views, supporting all HTTP verbs that security\npermits.";
        buildType = "Simple";
      };
      components = {
        "postgrest" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.ansi-wl-pprint
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.cassava
            hsPkgs.configurator-ng
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.either
            hsPkgs.gitrev
            hsPkgs.hasql
            hsPkgs.hasql-pool
            hsPkgs.hasql-transaction
            hsPkgs.heredoc
            hsPkgs.HTTP
            hsPkgs.http-types
            hsPkgs.insert-ordered-containers
            hsPkgs.interpolatedstring-perl6
            hsPkgs.jose
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.network-uri
            hsPkgs.optparse-applicative
            hsPkgs.parsec
            hsPkgs.protolude
            hsPkgs.Ranged-sets
            hsPkgs.regex-tdfa
            hsPkgs.safe
            hsPkgs.scientific
            hsPkgs.swagger2
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.wai
            hsPkgs.wai-cors
            hsPkgs.wai-extra
            hsPkgs.wai-middleware-static
            hsPkgs.cookie
          ];
        };
        exes = {
          "postgrest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hasql
              hsPkgs.hasql-pool
              hsPkgs.postgrest
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.warp
              hsPkgs.bytestring
              hsPkgs.base64-bytestring
              hsPkgs.retry
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-qq
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.base64-bytestring
              hsPkgs.case-insensitive
              hsPkgs.cassava
              hsPkgs.containers
              hsPkgs.contravariant
              hsPkgs.hasql
              hsPkgs.hasql-pool
              hsPkgs.heredoc
              hsPkgs.hjsonschema
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.hspec-wai-json
              hsPkgs.http-types
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.monad-control
              hsPkgs.postgrest
              hsPkgs.process
              hsPkgs.protolude
              hsPkgs.regex-tdfa
              hsPkgs.transformers-base
              hsPkgs.wai
              hsPkgs.wai-extra
            ];
          };
        };
      };
    }