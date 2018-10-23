{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dbmigrations-mysql";
        version = "2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
      author = "Jonathan Daugherty <cygnus@foobox.com>";
      homepage = "";
      url = "";
      synopsis = "The dbmigrations tool built for MySQL databases";
      description = "This package contains the executable to work with\nthe dbmigrations package when the database backend\nis MySQL. See the package dbmigrations for details\nabout the dbmigrations project in general.\nTo get started, see the 'README.md'\n(https://github.com/jtdaugherty/dbmigrations/blob/master/README.md)\nand 'MOO.TXT'\n(https://github.com/jtdaugherty/dbmigrations/blob/master/MOO.TXT)\nfiles included in the dbmigrations package and the\nusage output for the 'moo-sqlite' command.";
      buildType = "Simple";
    };
    components = {
      "dbmigrations-mysql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.dbmigrations)
          (hsPkgs.time)
          (hsPkgs.mysql)
          (hsPkgs.mysql-simple)
          (hsPkgs.split)
        ];
      };
      exes = {
        "moo-mysql" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dbmigrations-mysql)
            (hsPkgs.dbmigrations)
          ];
        };
      };
      tests = {
        "dbmigrations-mysql-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dbmigrations)
            (hsPkgs.dbmigrations-mysql)
            (hsPkgs.mysql-simple)
            (hsPkgs.mysql)
            (hsPkgs.process)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }