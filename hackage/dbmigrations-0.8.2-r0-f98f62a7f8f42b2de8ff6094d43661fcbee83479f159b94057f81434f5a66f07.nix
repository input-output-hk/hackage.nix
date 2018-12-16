{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dbmigrations";
        version = "0.8.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
      author = "Jonathan Daugherty <cygnus@foobox.com>";
      homepage = "";
      url = "";
      synopsis = "An implementation of relational database \"migrations\"";
      description = "A library and program for the creation,\nmanagement, and installation of schema updates\n(called /migrations/) for a relational database.\nIn particular, this package lets the migration\nauthor express explicit dependencies between\nmigrations and the management tool automatically\ninstalls or reverts migrations accordingly, using\ntransactions for safety.\nThis package is written to support any\nHDBC-supported database, although at present only\nPostgreSQL is fully supported.\nTo get started, see the included 'README.md' and\n'MOO.TXT' files and the usage output for the\n'moo' command.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HDBC)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.fgl)
          (hsPkgs.template-haskell)
          (hsPkgs.yaml-light)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.configurator)
          (hsPkgs.HDBC-postgresql)
          (hsPkgs.HDBC-sqlite3)
        ];
      };
      exes = {
        "moo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HDBC)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.fgl)
            (hsPkgs.template-haskell)
            (hsPkgs.yaml-light)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.configurator)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.HDBC-sqlite3)
          ];
        };
      };
      tests = {
        "dbmigrations-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.fgl)
            (hsPkgs.template-haskell)
            (hsPkgs.yaml-light)
            (hsPkgs.bytestring)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.HUnit)
            (hsPkgs.process)
          ];
        };
      };
    };
  }