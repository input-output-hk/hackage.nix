{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dbmigrations-mysql"; version = "2.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dbmigrations" or (errorHandler.buildDepError "dbmigrations"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mysql" or (errorHandler.buildDepError "mysql"))
          (hsPkgs."mysql-simple" or (errorHandler.buildDepError "mysql-simple"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "moo-mysql" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dbmigrations-mysql" or (errorHandler.buildDepError "dbmigrations-mysql"))
            (hsPkgs."dbmigrations" or (errorHandler.buildDepError "dbmigrations"))
            ];
          buildable = true;
          };
        };
      tests = {
        "dbmigrations-mysql-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dbmigrations" or (errorHandler.buildDepError "dbmigrations"))
            (hsPkgs."dbmigrations-mysql" or (errorHandler.buildDepError "dbmigrations-mysql"))
            (hsPkgs."mysql-simple" or (errorHandler.buildDepError "mysql-simple"))
            (hsPkgs."mysql" or (errorHandler.buildDepError "mysql"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }