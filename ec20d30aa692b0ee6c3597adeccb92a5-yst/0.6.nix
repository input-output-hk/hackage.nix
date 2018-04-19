{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yst";
          version = "0.6";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane";
        homepage = "http://github.com/jgm/yst";
        url = "";
        synopsis = "Builds a static website from templates and data in YAML or\nCSV files.";
        description = "`yst` is a tool for generating a static website\nby filling string templates with data taken from\nYAML text files (or, alternatively, CSV files or\nfrom a Sqlite3 database).\nThis approach combines the speed, security, and\nease of deployment of a static website with the\nflexibility and maintainability of a dynamic site\nthat separates presentation and data.";
        buildType = "Simple";
      };
      components = {
        exes = {
          yst = {
            depends  = [
              hsPkgs.base
              hsPkgs.unordered-containers
              hsPkgs.HStringTemplate
              hsPkgs.yaml
              hsPkgs.csv
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.scientific
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.lucid
              hsPkgs.pandoc
              hsPkgs.split
              hsPkgs.HDBC
              hsPkgs.HDBC-sqlite3
            ];
          };
        };
      };
    }