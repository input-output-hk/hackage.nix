{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postgresql-schema";
          version = "0.1.3";
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
            hsPkgs.base-prelude
            hsPkgs.formatting
            hsPkgs.shelly
            hsPkgs.text
          ];
        };
        exes = {
          "schema-add" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-prelude
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.optparse-applicative
              hsPkgs.postgresql-schema
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
          "schema-apply" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-prelude
              hsPkgs.optparse-applicative
              hsPkgs.postgresql-schema
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
        };
      };
    }