{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "EditTimeReport";
          version = "1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Bart Spaans <bart.spaans@gmail.com>";
        author = "Bart Spaans";
        homepage = "http://github.com/bspaans/EditTimeReport";
        url = "";
        synopsis = "Query language and report generator for edit logs.";
        description = "This program can be used to see exactly how much time\nyou spent working on file X, project Y or language Z.\nIt can also be used to see for instance what your most\nproductive time of the year, month or week is.\nIn the long-run, this might help you make better time\nestimates, while also providing you with an overview\nof what you have worked on (which can also be nice for CV's).\nIn short; this program allows you to query your logs\nand generate reports in plain text, html, xhtml and CSV.\nSupport for more output formats is planned for the future.\nSee the github page for more information.";
        buildType = "Simple";
      };
      components = {
        exes = {
          report = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.xhtml
              hsPkgs.html
              hsPkgs.pretty
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.editline
              hsPkgs.directory
              hsPkgs.csv
            ];
          };
        };
      };
    }