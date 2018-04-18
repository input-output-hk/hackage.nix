{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasql-migration";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "Timo von Holtz, Andreas Meingast";
        maintainer = "Timo von Holtz <tvh@tvholtz.de>";
        author = "Timo von Holtz <tvh@tvholtz.de>";
        homepage = "https://github.com/tvh/hasql-migration";
        url = "";
        synopsis = "PostgreSQL Schema Migrations";
        description = "A PostgreSQL-simple schema migration utility";
        buildType = "Simple";
      };
      components = {
        hasql-migration = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.contravariant
            hsPkgs.cryptohash
            hsPkgs.data-default-class
            hsPkgs.directory
            hsPkgs.hasql
            hsPkgs.hasql-transaction
            hsPkgs.text
            hsPkgs.time
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hasql
              hsPkgs.hasql-migration
              hsPkgs.hasql-transaction
              hsPkgs.hspec
              hsPkgs.transformers
            ];
          };
        };
      };
    }