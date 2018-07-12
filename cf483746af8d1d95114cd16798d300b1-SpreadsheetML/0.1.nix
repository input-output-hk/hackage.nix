{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "SpreadsheetML";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Galois, Inc.";
        maintainer = "dagitj@gmail.com";
        author = "Jason Dagit";
        homepage = "";
        url = "";
        synopsis = "Write support for Excel's SpreadsheetML format";
        description = "Output XML in the SpreadsheetML namespace. This allows you\nto generate XLS file for excel. Binary compressed Office Open Document format\nnot yet supported, but you can take this xml output and name it \".xls\" and\nExcel will be able to open the document as a spreadsheet.";
        buildType = "Simple";
      };
      components = {
        "SpreadsheetML" = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
          ];
        };
      };
    }