{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "postgresql-schema";
          version = "0.1.14";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Mark Fine";
        maintainer = "mark.fine@gmail.com";
        author = "Mark Fine";
        homepage = "https://github.com/mfine/postgresql-schema";
        url = "";
        synopsis = "PostgreSQL Schema Management";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "postgresql-schema" = {
          depends  = [
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.postgresql-simple
            hsPkgs.shelly
            hsPkgs.text
          ];
        };
        exes = {
          "schema-add" = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.optparse-applicative
              hsPkgs.postgresql-schema
              hsPkgs.shelly
              hsPkgs.text
              hsPkgs.time
            ];
          };
          "schema-apply" = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.optparse-applicative
              hsPkgs.postgresql-schema
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
          "schema-clear" = {
            depends  = [
              hsPkgs.base
              hsPkgs.basic-prelude
              hsPkgs.optparse-applicative
              hsPkgs.postgresql-schema
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
        };
      };
    }