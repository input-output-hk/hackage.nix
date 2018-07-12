{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ampersand";
          version = "3.0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "Stef Joosten";
        maintainer = "stef.joosten@ou.nl";
        author = "Stef Joosten";
        homepage = "ampersand.sourceforge.net";
        url = "";
        synopsis = "Toolsuite for automated design of business processes.";
        description = "You can define your business processes by means of rules, written in Relation Algebra.";
        buildType = "Custom";
      };
      components = {
        exes = {
          "ampersand" = {
            depends  = [
              hsPkgs.HDBC
              hsPkgs.HDBC-odbc
              hsPkgs.HStringTemplate
              hsPkgs.SpreadsheetML
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.csv
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.graphviz
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.process
              hsPkgs.simple-sql-parser
              hsPkgs.split
              hsPkgs.text
              hsPkgs.time
              hsPkgs.utf8-string
              hsPkgs.uulib
            ];
          };
        };
      };
    }