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
      specVersion = "1.8";
      identifier = {
        name = "list-remote-forwards";
        version = "0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "";
      url = "";
      synopsis = "List all remote forwards for mail accounts stored in a SQL database.";
      description = "/Usage/:\n\n@\nlist-remote-forwards [OPTIONS]\n@\n\nList all remote forwards for mail accounts stored in a SQL database.\n\nA list of local domains is supplied to the program (more or less)\nthrough the @--domain-query@ option. Any addresses which\nforward to another address not contained in this list of local domains\nis considered a remote forward. Remote forwards can cause problems for\na number of reasons, the most common of which are,\n\n* If the sender has an SPF record authorizing his mail server to send\nmail on his behalf, then when his message is forwarded by the\nrecipient's mail server, it will fail any subsequent SPF checks. This\nwill likely cause the message to be rejected, and the original\nrecipient's server will generate backscatter.\n\n* If any spam makes it through the filter on the recipient's mail\nserver, that spam will then be forwarded to a remote destination. The\nremote destination will blame the forwarding server for the spam, and\nthat can impact its reputation and potentially lead to a blacklisting\neven though the spam did not originate on the recipient's server.\n\nWhether or not these are an issue depends on the circumstances, but in\nany case it is useful to know who is forwarding mail off-site.\n\n/Input:/\n\nNone.\n\n/Output:/\n\nA list of addresses that are forwarded to remote domains.\n\n/Options/:\n\n@\n\\--database\n@\n\nThe name of the database (or file, if SQLite) to which we should\nconnect.\n\nDefault: The name of the current user (Postgres only).\n\n@\n\\--domain-query\n@\nSQL query used to produce a list of local domains. This should return\nthe set of all domains (i.e one column) that are local to the\nserver. See the default value for an example.\n\nDefault: \\\"SELECT domain FROM domain WHERE domain <> 'ALL' ORDER BY domain;\\\"\n\n@\n\\--exclude-mx, -e\n@\n\nThe name of a mail exchanger, the forwards of whose domains we should\nignore. For example, if one mail exchanger, mx1.example.com, has\nstrict spam filtering, it may be acceptable to have remote forwarding\nfor domains that have mx1.example.com as their sole mail exchanger (MX\nrecord). In that case, you might want to exclude those domains from\nthe report by naming mx1.example.com here.\n\nA forward will be excluded from the report only if /all/ of its MX\nrecords are contained in the given exclude list.\n\nThis option can be repeated to add mail exchangers to the exclude list.\n\nDefault: [] (empty)\n\n@\n\\--forward-query, -f\n@\n\nSQL query used to produce a list of all forwards on the mail\nsystem. This query should return the set of all (address, goto)\ntriples, where \\\"goto\\\" is the destination address; i.e. to where\nthe \\\"address\\\" forwards. The \\\"goto\\\" field may contain more\nthan one email address, separated by commas.\n\nDefault: \\\"SELECT address,goto FROM alias ORDER BY address;\\\"\n\n@\n\\--host, -h\n@\n\nHostname where the database is located (Postgres-only).\n\nDefault: None, a UNIX domain socket connection is attempted (Postgres only)\n\n@\n\\--password\n@\n\nPassword used to connect to the database (Postgres-only).\n\nDefault: None (assumes passwordless authentication)\n\n@\n\\--port\n@\nPort number used to connect to the database (Postgres-only).\n\nDefault: None, a UNIX domain socket connection is attempted (Postgres only)\n\n@\n\\--username, -u\n@\n\nUsername used to connect to the database (Postgres-only).\n\nDefault: The current user\n\n/Examples/:\n\n@\n\$ list-remote-forwards --database=test/fixtures/postfixadmin.sqlite3\nuser1@example.com -> user1@example.net\nuser2@example.com -> user1@example.org\nuser2@example.com -> user2@example.org\nuser2@example.com -> user3@example.org\nuser7@example.com -> user8@example.net\n@";
      buildType = "Simple";
    };
    components = {
      exes = {
        "list-remote-forwards" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.configurator)
            (hsPkgs.containers)
            (hsPkgs.dns)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.MissingH)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.configurator)
            (hsPkgs.containers)
            (hsPkgs.dns)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.MissingH)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filemanip)
          ];
        };
      };
    };
  }