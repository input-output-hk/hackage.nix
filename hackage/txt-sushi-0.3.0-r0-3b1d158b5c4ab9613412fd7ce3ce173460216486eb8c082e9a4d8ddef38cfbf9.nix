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
      specVersion = "1.2";
      identifier = {
        name = "txt-sushi";
        version = "0.3.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "keithshep@gmail.com";
      author = "Keith Sheppard";
      homepage = "http://keithsheppard.name/txt-sushi";
      url = "";
      synopsis = "Spreadsheets are databases!";
      description = "TxtSushi is a collection of command line utilities for processing\ncomma-separated and tab-delimited files (AKA flat files, spreadsheets).\nThe most important utility (tssql) lets you perform SQL selects on CSV files.\nBy focusing exclusively on processing text files with a tabular structure,\nTxtSushi simplifies common tasks like filtering, joining and transformation\nthat would take some effort to accomplish with a more powerful scripting\nlanguage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.directory)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "tssql" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.regex-posix)
          ];
        };
        "csvtotab" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.containers)
          ];
        };
        "tabtocsv" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.containers)
          ];
        };
        "csvtopretty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.containers)
          ];
        };
        "tabtopretty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.containers)
          ];
        };
        "namecolumns" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }