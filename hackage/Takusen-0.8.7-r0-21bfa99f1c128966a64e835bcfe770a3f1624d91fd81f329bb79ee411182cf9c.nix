{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "Takusen"; version = "0.8.7"; };
      license = "BSD-3-Clause";
      copyright = "2003-2009, Alistair Bayley, Oleg Kiselyov";
      maintainer = "dagit@codersbase.com, alistair@abayley.org, oleg@pobox.com";
      author = "Alistair Bayley, Oleg Kiselyov";
      homepage = "";
      url = "";
      synopsis = "Database library with left-fold interface, for PostgreSQL, Oracle, SQLite, ODBC.";
      description = "Takusen is a DBMS access library. Like HSQL and HDBC, we support\narbitrary SQL statements (currently strings, extensible to anything\nthat can be converted to a string).\n\nTakusen's unique selling point is safety and efficiency.\nWe statically ensure all acquired database resources - such\nas cursors, connections, and statement handles - are released, exactly\nonce, at predictable times. Takusen can avoid loading the whole result\nset in memory, and so can handle queries returning millions of rows in\nconstant space. Takusen also supports automatic marshalling and\nunmarshalling of results and query parameters. These benefits come\nfrom the design of query result processing around a left-fold\nenumerator.\n\nCurrently we fully support ODBC, Oracle, Sqlite, and PostgreSQL.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.8") (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))) ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = (((pkgs.lib).optionals (flags.odbc) (if system.isWindows
          then [
            (pkgs."odbc32" or ((hsPkgs.pkgs-errors).sysDepError "odbc32"))
            ]
          else if system.isOsx
            then [
              (pkgs."iodbc" or ((hsPkgs.pkgs-errors).sysDepError "iodbc"))
              ]
            else [
              (pkgs."odbc" or ((hsPkgs.pkgs-errors).sysDepError "odbc"))
              ]) ++ (pkgs.lib).optionals (flags.oracle) (if system.isWindows
          then [ (pkgs."oci" or ((hsPkgs.pkgs-errors).sysDepError "oci")) ]
          else [
            (pkgs."clntsh" or ((hsPkgs.pkgs-errors).sysDepError "clntsh"))
            ])) ++ (pkgs.lib).optional (flags.postgres) (pkgs."pq" or ((hsPkgs.pkgs-errors).sysDepError "pq"))) ++ (pkgs.lib).optional (flags.sqlite) (pkgs."sqlite3" or ((hsPkgs.pkgs-errors).sysDepError "sqlite3"));
        pkgconfig = (pkgs.lib).optionals (flags.sqlite) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."sqlite3" or ((hsPkgs.pkgs-errors).pkgConfDepError "sqlite3")));
        build-tools = ((pkgs.lib).optional (flags.oracle) (hsPkgs.buildPackages.sqlplus or (pkgs.buildPackages.sqlplus or ((hsPkgs.pkgs-errors).buildToolDepError "sqlplus"))) ++ (pkgs.lib).optional (flags.postgres) (hsPkgs.buildPackages.pg_config or (pkgs.buildPackages.pg_config or ((hsPkgs.pkgs-errors).buildToolDepError "pg_config")))) ++ (pkgs.lib).optional (flags.sqlite) (hsPkgs.buildPackages.sqlite3 or (pkgs.buildPackages.sqlite3 or ((hsPkgs.pkgs-errors).buildToolDepError "sqlite3")));
        buildable = if flags.buildtests then false else true;
        };
      exes = {
        "takusen_tests" = {
          depends = ((pkgs.lib).optionals (!(!flags.buildtests)) [
            (hsPkgs."Takusen" or ((hsPkgs.pkgs-errors).buildDepError "Takusen"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.8") (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))) ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.buildtests then false else true;
          };
        "miniunit_tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.buildtests then false else true;
          };
        };
      };
    }