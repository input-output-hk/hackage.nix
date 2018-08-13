{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "txt-sushi";
        version = "0.5.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "keithshep@gmail.com";
      author = "Keith Sheppard";
      homepage = "http://keithsheppard.name/txt-sushi";
      url = "";
      synopsis = "The SQL link in your *NIX chain";
      description = "TxtSushi is a collection of command line utilities for processing\ncomma-separated and tab-delimited files (AKA flat files, spreadsheets).\nThe most important utility (tssql) lets you perform SQL selects on CSV files.\nBy focusing exclusively on processing text files with a tabular structure,\nTxtSushi simplifies common tasks like filtering, joining and transformation\nthat would take more effort to accomplish with a general purpose text\nprocessing language.";
      buildType = "Simple";
    };
    components = {
      "txt-sushi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.parsec)
          (hsPkgs.regex-posix)
        ];
      };
      exes = {
        "tssql" = {};
        "csvtotab" = {};
        "tabtocsv" = {};
        "csvtopretty" = {};
        "tabtopretty" = {};
        "namecolumns" = {};
        "transposecsv" = {};
        "transposetab" = {};
      };
    };
  }