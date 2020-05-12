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
    flags = { testing = false; store-manager = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "dbmigrations"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <drcygnus@gmail.com>";
      author = "Jonathan Daugherty <drcygnus@gmail.com>";
      homepage = "http://repos.codevine.org/dbmigrations/";
      url = "";
      synopsis = "An implementation of relational database \"migrations\"";
      description = "A library and program for the creation,\nmanagement, and installation of schema updates\n(called /migrations/) for a relational database.\nIn particular, this package lets the migration\nauthor express explicit dependencies between\nmigrations and the management tool automatically\ninstalls or reverts migrations accordingly, using\ntransactions for safety.\nThis package is written to support any\nHDBC-supported database, although at present only\nPostgreSQL is fully supported.\nTo get started, see the included 'README' and\n'MOO.TXT' files and the usage output for the\n'moo' command.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = if !flags.testing then false else true;
          };
        "moo" = { buildable = true; };
        "store-manager" = {
          depends = [
            (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
            ];
          buildable = if !flags.testing then false else true;
          };
        };
      };
    }