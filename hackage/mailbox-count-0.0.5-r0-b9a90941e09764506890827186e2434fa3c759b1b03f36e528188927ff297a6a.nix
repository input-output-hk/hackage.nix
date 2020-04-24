{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC-sqlite3" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-sqlite3"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-postgresql"))
            (hsPkgs."HDBC-sqlite3" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-sqlite3"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
            ];
          buildable = true;
          };
        };
      };
    }