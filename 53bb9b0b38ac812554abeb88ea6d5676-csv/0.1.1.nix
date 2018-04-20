{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "csv";
          version = "0.1.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Jaap Weel, 2007";
        maintainer = "Jaap Weel <weel@ugcs.caltech.edu>";
        author = "Jaap Weel <weel@ugcs.caltech.edu>";
        homepage = "";
        url = "";
        synopsis = "CSV loader and dumper";
        description = "CSV loader and dumper\n\nThis library parses and dumps documents that are formatted\naccording to RFC 4180, \\\"The common Format and MIME Type for\nComma-Separated Values (CSV) Files\\\". This format is used, among\nmany other things, as a lingua franca for spreadsheets, and for\ncertain web services.";
        buildType = "Custom";
      };
      components = {
        csv = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.filepath
          ];
        };
      };
    }