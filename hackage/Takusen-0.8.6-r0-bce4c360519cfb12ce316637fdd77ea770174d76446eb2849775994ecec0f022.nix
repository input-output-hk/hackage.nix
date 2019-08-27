let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      identifier = { name = "Takusen"; version = "0.8.6"; };
      license = "BSD-3-Clause";
      copyright = "2003-2009, Alistair Bayley, Oleg Kiselyov";
      maintainer = "alistair@abayley.org, oleg@pobox.com";
      author = "Alistair Bayley, Oleg Kiselyov";
      homepage = "http://code.haskell.org/takusen";
      url = "http://code.haskell.org/takusen";
      synopsis = "Database library with left-fold interface, for PostgreSQL, Oracle, SQLite, ODBC.";
      description = "Takusen is a DBMS access library. Like HSQL and HDBC, we support\narbitrary SQL statements (currently strings, extensible to anything\nthat can be converted to a string).\n\nTakusen's unique selling point is safety and efficiency.\nWe statically ensure all acquired database resources - such\nas cursors, connections, and statement handles - are released, exactly\nonce, at predictable times. Takusen can avoid loading the whole result\nset in memory, and so can handle queries returning millions of rows in\nconstant space. Takusen also supports automatic marshalling and\nunmarshalling of results and query parameters. These benefits come\nfrom the design of query result processing around a left-fold\nenumerator.\n\nCurrently we fully support ODBC, Oracle, Sqlite, and PostgreSQL.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."time" or (buildDepError "time"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.8") (hsPkgs."old-time" or (buildDepError "old-time"))) ++ [
          (hsPkgs."base" or (buildDepError "base"))
          ];
        libs = (((pkgs.lib).optionals (flags.odbc) (if system.isWindows
          then [ (pkgs."odbc32" or (sysDepError "odbc32")) ]
          else if system.isOsx
            then [ (pkgs."iodbc" or (sysDepError "iodbc")) ]
            else [
              (pkgs."odbc" or (sysDepError "odbc"))
              ]) ++ (pkgs.lib).optionals (flags.oracle) (if system.isWindows
          then [ (pkgs."oci" or (sysDepError "oci")) ]
          else [
            (pkgs."clntsh" or (sysDepError "clntsh"))
            ])) ++ (pkgs.lib).optional (flags.postgres) (pkgs."pq" or (sysDepError "pq"))) ++ (pkgs.lib).optional (flags.sqlite) (pkgs."sqlite3" or (sysDepError "sqlite3"));
        pkgconfig = (pkgs.lib).optionals (flags.sqlite) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."sqlite3" or (pkgConfDepError "sqlite3")));
        build-tools = ((pkgs.lib).optional (flags.oracle) (hsPkgs.buildPackages.sqlplus or (pkgs.buildPackages.sqlplus or (buildToolDepError "sqlplus"))) ++ (pkgs.lib).optional (flags.postgres) (hsPkgs.buildPackages.pg_config or (pkgs.buildPackages.pg_config or (buildToolDepError "pg_config")))) ++ (pkgs.lib).optional (flags.sqlite) (hsPkgs.buildPackages.sqlite3 or (pkgs.buildPackages.sqlite3 or (buildToolDepError "sqlite3")));
        };
      exes = {
        "takusen_tests" = {
          depends = (([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            ] ++ (pkgs.lib).optional (!(!flags.buildtests)) (hsPkgs."Takusen" or (buildDepError "Takusen"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.8") (hsPkgs."old-time" or (buildDepError "old-time"))) ++ [
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "miniunit_tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        };
      };
    }