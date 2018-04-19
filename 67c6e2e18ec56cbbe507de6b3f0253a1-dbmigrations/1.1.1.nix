{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dbmigrations";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
        author = "Jonathan Daugherty <cygnus@foobox.com>";
        homepage = "";
        url = "";
        synopsis = "An implementation of relational database \"migrations\"";
        description = "A library and program for the creation,\nmanagement, and installation of schema updates\n(called /migrations/) for a relational database.\nIn particular, this package lets the migration\nauthor express explicit dependencies between\nmigrations and the management tool automatically\ninstalls or reverts migrations accordingly, using\ntransactions for safety.\nThis package is written to support any\nHDBC-supported database. This package supports\nSQLite, PostgreSQL, and MySQL. Please see MOO.TXT\nfor warnings about MySQL!\nTo get started, see the included 'README.md' and\n'MOO.TXT' files and the usage output for the\n'moo' command.";
        buildType = "Simple";
      };
      components = {
        dbmigrations = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
            hsPkgs.time
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.fgl
            hsPkgs.template-haskell
            hsPkgs.yaml-light
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.configurator
            hsPkgs.HDBC-postgresql
            hsPkgs.HDBC-sqlite3
            hsPkgs.mysql
            hsPkgs.mysql-simple
            hsPkgs.split
          ];
        };
        exes = {
          moo = {
            depends  = [
              hsPkgs.base
              hsPkgs.configurator
              hsPkgs.dbmigrations
            ];
          };
        };
        tests = {
          dbmigrations-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.fgl
              hsPkgs.template-haskell
              hsPkgs.yaml-light
              hsPkgs.bytestring
              hsPkgs.MissingH
              hsPkgs.HDBC
              hsPkgs.HDBC-postgresql
              hsPkgs.HDBC-sqlite3
              hsPkgs.HUnit
              hsPkgs.process
              hsPkgs.configurator
              hsPkgs.text
              hsPkgs.mysql-simple
              hsPkgs.mysql
              hsPkgs.split
            ];
          };
        };
      };
    }