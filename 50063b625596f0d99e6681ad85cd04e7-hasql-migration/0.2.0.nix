{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasql-migration";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Timo von Holtz, Andreas Meingast, Sumit Raja";
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
            hsPkgs.bytestring
            hsPkgs.contravariant
            hsPkgs.cryptonite
            hsPkgs.data-default-class
            hsPkgs.directory
            hsPkgs.hasql
            hsPkgs.hasql-transaction
            hsPkgs.memory
            hsPkgs.text
            hsPkgs.time
          ];
        };
        tests = {
          hasql-migration-test = {
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