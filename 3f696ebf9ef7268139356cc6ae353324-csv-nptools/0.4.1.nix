{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "csv-nptools";
          version = "0.4.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Nicolas Pouillard";
        maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
        author = "Nicolas Pouillard";
        homepage = "";
        url = "";
        synopsis = "A collection of CSV tools";
        description = "A collection of CSV tools";
        buildType = "Simple";
      };
      components = {
        exes = {
          "csv2html" = {
            depends  = [
              hsPkgs.base
              hsPkgs.html
              hsPkgs.tabular
              hsPkgs.csv
            ];
          };
          "csv2json" = {
            depends  = [
              hsPkgs.base
              hsPkgs.txt-sushi
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.aeson
            ];
          };
          "csv-add-id" = {
            depends  = [
              hsPkgs.base
              hsPkgs.txt-sushi
            ];
          };
          "csv-reformat" = {
            depends  = [
              hsPkgs.base
              hsPkgs.txt-sushi
            ];
          };
          "csv-tr" = {
            depends  = [
              hsPkgs.base
              hsPkgs.txt-sushi
            ];
          };
          "csv-transpose" = {
            depends  = [
              hsPkgs.base
              hsPkgs.txt-sushi
            ];
          };
          "csv-pad" = {
            depends  = [
              hsPkgs.base
              hsPkgs.txt-sushi
            ];
          };
        };
      };
    }