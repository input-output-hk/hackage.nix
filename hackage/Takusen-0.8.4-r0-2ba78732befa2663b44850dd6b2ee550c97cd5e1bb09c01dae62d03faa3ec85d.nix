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
    flags = {
      odbc = false;
      oracle = false;
      postgres = false;
      sqlite = false;
      buildtests = false;
    };
    package = {
      specVersion = "1.6";
      identifier = { name = "Takusen"; version = "0.8.4"; };
      license = "BSD-3-Clause";
      copyright = "2003-2008, Alistair Bayley, Oleg Kiselyov";
      maintainer = "alistair@abayley.org, oleg@pobox.com";
      author = "Alistair Bayley, Oleg Kiselyov";
      homepage = "http://darcs.haskell.org/takusen";
      url = "http://darcs.haskell.org/takusen";
      synopsis = "Database library with left-fold interface, for PostgreSQL, Oracle, SQLite, ODBC.";
      description = "Takusen is a DBMS access library. Like HSQL and HDBC, we support\narbitrary SQL statements (currently strings, extensible to anything\nthat can be converted to a string).\n\nTakusen's unique selling point is safety and efficiency.\nWe statically ensure all acquired database resources - such\nas cursors, connections, and statement handles - are released, exactly\nonce, at predictable times. Takusen can avoid loading the whole result\nset in memory, and so can handle queries returning millions of rows in\nconstant space. Takusen also supports automatic marshalling and\nunmarshalling of results and query parameters. These benefits come\nfrom the design of query result processing around a left-fold\nenumerator.\n\nCurrently we fully support ODBC, Oracle, Sqlite, and PostgreSQL.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.8") (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))) ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        libs = ((pkgs.lib.optionals (flags.odbc) (if system.isWindows
          then [ (pkgs."odbc32" or (errorHandler.sysDepError "odbc32")) ]
          else if system.isOsx
            then [ (pkgs."iodbc" or (errorHandler.sysDepError "iodbc")) ]
            else [
              (pkgs."odbc" or (errorHandler.sysDepError "odbc"))
            ]) ++ pkgs.lib.optionals (flags.oracle) (if system.isWindows
          then [ (pkgs."oci" or (errorHandler.sysDepError "oci")) ]
          else [
            (pkgs."clntsh" or (errorHandler.sysDepError "clntsh"))
          ])) ++ pkgs.lib.optional (flags.postgres) (pkgs."pq" or (errorHandler.sysDepError "pq"))) ++ pkgs.lib.optional (flags.sqlite) (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3"));
        pkgconfig = pkgs.lib.optionals (flags.sqlite) (pkgs.lib.optional (!system.isWindows) (pkgconfPkgs."sqlite3" or (errorHandler.pkgConfDepError "sqlite3")));
        build-tools = (pkgs.lib.optional (flags.oracle) (hsPkgs.pkgsBuildBuild.sqlplus.components.exes.sqlplus or (pkgs.pkgsBuildBuild.sqlplus or (errorHandler.buildToolDepError "sqlplus:sqlplus"))) ++ pkgs.lib.optional (flags.postgres) (hsPkgs.pkgsBuildBuild.pg_config.components.exes.pg_config or (pkgs.pkgsBuildBuild.pg_config or (errorHandler.buildToolDepError "pg_config:pg_config")))) ++ pkgs.lib.optional (flags.sqlite) (hsPkgs.pkgsBuildBuild.sqlite3.components.exes.sqlite3 or (pkgs.pkgsBuildBuild.sqlite3 or (errorHandler.buildToolDepError "sqlite3:sqlite3")));
        buildable = if flags.buildtests then false else true;
      };
      exes = {
        "takusen_tests" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ pkgs.lib.optional (!!flags.buildtests) (hsPkgs."Takusen" or (errorHandler.buildDepError "Takusen"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.8") (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))) ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if !flags.buildtests then false else true;
        };
        "miniunit_tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if !flags.buildtests then false else true;
        };
      };
    };
  }