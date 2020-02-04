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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "mailbox-count"; version = "0.0.5"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "";
      url = "";
      synopsis = "Count mailboxes in a SQL database.";
      description = "/Usage/:\n\n@\nmailbox-count [OPTIONS]\n@\n\nMailbox-count produces a simple count of mailboxes that exist\nper-domain in some SQL database. The default queries are compatible\nwith the schema used by PostfixAdmin <http://postfixadmin.sourceforge.net/>,\nbut it is possible to supply your own queries via the @--summary-query@\nand @--detail-query@ options.\n\nThe summary report lists each domain, along with the number of\nmailboxes owned by that domain. The order is determined by the summary\nquery, which lists the domains alphabetically by default.\n\nThe default detail report shows the same, but also contains a list of\neach individual mailbox (again in alphabetical order) belonging to the\ndomains.\n\n/Input/:\n\nNone.\n\n/Output/:\n\nEither a summary, or detailed report (with @--detail@) of the\nnumber of mailboxes per-domain contained in the database.\n\n/Options/:\n\n@\n\\--database\n@\n\nThe name of the database (or file, if SQLite) to which we should\nconnect.\n\nDefault: The name of the current user (Postgres only).\n\n@\n\\--detail\n@\n\nProduce a detailed report listing all mailboxes by domain.\n\n@\n\\--detail-query\n@\n\nSQL query used to produce the detail report. This should return the\nset of all (domain, username) pairs. See the default value for an\nexample.\n\nDefault: \\\"SELECT domain,username FROM mailbox ORDER BY domain;\\\"\n\n@\n\\--host\n@\n\nHostname where the database is located (Postgres-only).\n\nDefault: None, a UNIX domain socket connection is attempted (Postgres only)\n\n@\n\\--password\n@\n\nPassword used to connect to the database (Postgres-only).\n\nDefault: None (assumes passwordless authentication)\n\n@\n\\--port\n@\nPort number used to connect to the database (Postgres-only).\n\nDefault: None, a UNIX domain socket connection is attempted (Postgres only)\n\n@\n\\--summary-query\n@\n\nSQL query used to produce the summary report. This should return\n(domain, user count) pairs. See the default value for an\nexample.\n\nDefault: \\\"SELECT domain,COUNT(username) FROM mailbox GROUP BY domain\nORDER BY domain;\\\"\n\n@\n\\--username\n@\n\nUsername used to connect to the database (Postgres-only).\n\nDefault: The current user\n\n/Examples/:\n\nThe default summary report:\n\n@\n\$ mailbox-count --database=postfixadmin.sqlite3\nSummary (number of mailboxes per domain)\n\\----------------------------------------\nexample.com:     3\nexample.invalid: 1\nexample.net:     2\nexample.org:     1\n@\n\nThe more detailed report:\n\n@\n\$ mailbox-count --detail --database=postfixadmin.sqlite3\nDetail (list of all mailboxes by domain)\n\\----------------------------------------\nexample.com (3):\n&#x20; user1\n&#x20; user3\n&#x20; user5\nexample.invalid (1):\n&#x20; user7\nexample.net (2):\n&#x20; user2\n&#x20; user4\nexample.org (1):\n&#x20; user6\n@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mailbox-count" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          buildable = true;
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."HDBC" or (buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC-sqlite3" or (buildDepError "HDBC-sqlite3"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            ];
          buildable = true;
          };
        };
      };
    }