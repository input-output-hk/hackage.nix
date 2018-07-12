{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mailbox-count";
          version = "0.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Michael Orlitzky <michael@orlitzky.com>";
        author = "Michael Orlitzky";
        homepage = "http://michael.orlitzky.com/code/mailbox-count.php";
        url = "";
        synopsis = "Count mailboxes in a SQL database.";
        description = "Count mailboxes in a SQL database.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "mailbox-count" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.configurator
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HDBC
              hsPkgs.HDBC-postgresql
              hsPkgs.HDBC-sqlite3
              hsPkgs.MissingH
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
        tests = {
          "testsuite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.configurator
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HDBC
              hsPkgs.HDBC-postgresql
              hsPkgs.HDBC-sqlite3
              hsPkgs.MissingH
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filemanip
            ];
          };
        };
      };
    }