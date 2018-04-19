{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      enable-psql-test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gargoyle-postgresql";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2017 Obsidian Systems LLC";
        maintainer = "maintainer@obsidian.systems";
        author = "Obsidian Systems LLC";
        homepage = "";
        url = "";
        synopsis = "Manage PostgreSQL servers with gargoyle";
        description = "This package provides tools for managing PostgreSQL servers that live in local folders and communicate via a Unix domain socket. It uses the <https://hackage.haskell.org/package/gargoyle gargoyle> package in order to automatically initialize, spin up, and spin down such servers according to client demand.\n\nThe `gargoyle-psql` executable is such a client which will try to connect to a PostgreSQL server at a given location:\n\n> gargoyle-psql db\n\n> psql (9.5.6)\n> Type \"help\" for help.\n>\n> postgres=#\n\nNote that `gargoyle-psql` assumes that PostgreSQL executables such as `psql` are available on the PATH. A custom 'Gargoyle' is required to use non-standard PostgreSQL installations.\n\nThe following is an example of using this package to run <https://hackage.haskell.org/package/postgresql-simple postgresql-simple> actions using a local DB:\n\n> import Database.PostgreSQL.Simple\n> import Gargoyle\n> import Gargoyle.PostgreSQL\n>\n> withDb :: String -> (Connection -> IO a) -> IO a\n> withDb dbPath a = withGargoyle defaultPostgres dbPath \$ \\dbUri -> a =<< connectPostgreSQL dbUri";
        buildType = "Simple";
      };
      components = {
        gargoyle-postgresql = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.gargoyle
            hsPkgs.process
            hsPkgs.stringsearch
            hsPkgs.text
            hsPkgs.unix
          ];
        };
        exes = {
          gargoyle-psql = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.gargoyle
              hsPkgs.gargoyle-postgresql
              hsPkgs.process
              hsPkgs.text
              hsPkgs.unix
            ];
          };
          gargoyle-postgres-monitor = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.gargoyle
              hsPkgs.gargoyle-postgresql
              hsPkgs.process
              hsPkgs.text
            ];
          };
        };
        tests = {
          gargoyle-psql-test = {
            depends  = pkgs.lib.optionals (!(!_flags.enable-psql-test)) [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.gargoyle
              hsPkgs.gargoyle-postgresql
              hsPkgs.process
              hsPkgs.text
              hsPkgs.unix
            ];
          };
        };
      };
    }