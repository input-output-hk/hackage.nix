{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dbmigrations-postgresql";
          version = "2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
        author = "Jonathan Daugherty <cygnus@foobox.com>";
        homepage = "";
        url = "";
        synopsis = "The dbmigrations tool built for PostgreSQL databases";
        description = "This package contains the executable to work with\nthe dbmigrations package when the database backend\nis PostgreSQL. See the package dbmigrations for details\nabout the dbmigrations project in general.\nTo get started, see the 'README.md'\n(https://github.com/jtdaugherty/dbmigrations/blob/master/README.md)\nand 'MOO.TXT'\n(https://github.com/jtdaugherty/dbmigrations/blob/master/MOO.TXT)\nfiles included in the dbmigrations package and the\nusage output for the 'moo-postgresql' command.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "moo-postgresql" = {
            depends  = [
              hsPkgs.base
              hsPkgs.dbmigrations
              hsPkgs.HDBC-postgresql
            ];
          };
        };
        tests = {
          "dbmigrations-postgresql-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.dbmigrations
              hsPkgs.HDBC
              hsPkgs.HDBC-postgresql
              hsPkgs.process
              hsPkgs.HUnit
            ];
          };
        };
      };
    }