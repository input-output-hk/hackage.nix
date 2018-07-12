{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postgresql-simple-migration";
          version = "0.1.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014-2016, Andreas Meingast";
        maintainer = "Andreas Meingast <ameingast@gmail.com>";
        author = "Andreas Meingast <ameingast@gmail.com>";
        homepage = "https://github.com/ameingast/postgresql-simple-migration";
        url = "";
        synopsis = "PostgreSQL Schema Migrations";
        description = "A PostgreSQL-simple schema migration utility";
        buildType = "Simple";
      };
      components = {
        "postgresql-simple-migration" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cryptohash
            hsPkgs.directory
            hsPkgs.postgresql-simple
            hsPkgs.time
          ];
        };
        exes = {
          "migrate" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.cryptohash
              hsPkgs.directory
              hsPkgs.postgresql-simple
              hsPkgs.time
              hsPkgs.text
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.postgresql-simple
              hsPkgs.hspec
              hsPkgs.postgresql-simple-migration
            ];
          };
        };
      };
    }