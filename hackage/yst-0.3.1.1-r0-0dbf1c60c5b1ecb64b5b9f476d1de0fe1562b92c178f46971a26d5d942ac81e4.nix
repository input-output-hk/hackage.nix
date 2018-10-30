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
        name = "yst";
        version = "0.3.1.1";
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
        "yst" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HStringTemplate)
            (hsPkgs.HsSyck)
            (hsPkgs.csv)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.parsec)
            (hsPkgs.xhtml)
            (hsPkgs.pandoc)
            (hsPkgs.bytestring)
            (hsPkgs.split)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
          ];
        };
      };
    };
  }