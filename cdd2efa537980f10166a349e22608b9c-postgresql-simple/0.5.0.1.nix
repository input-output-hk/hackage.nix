{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "postgresql-simple";
          version = "0.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 MailRank, Inc.\n(c) 2011-2013 Leon P Smith";
        maintainer = "Leon P Smith <leon@melding-monads.com>";
        author = "Bryan O'Sullivan, Leon P Smith";
        homepage = "";
        url = "";
        synopsis = "Mid-Level PostgreSQL client library";
        description = "Mid-Level PostgreSQL client library, forked from mysql-simple.";
        buildType = "Simple";
      };
      components = {
        "postgresql-simple" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-builder
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.postgresql-libpq
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.uuid-types
            hsPkgs.scientific
            hsPkgs.vector
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.HUnit
              hsPkgs.postgresql-simple
              hsPkgs.text
              hsPkgs.time
              hsPkgs.vector
            ];
          };
        };
      };
    }