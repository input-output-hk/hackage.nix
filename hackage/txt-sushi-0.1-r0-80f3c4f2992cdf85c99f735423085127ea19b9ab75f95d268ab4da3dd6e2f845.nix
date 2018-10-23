{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "txt-sushi";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "keithshep@gmail.com";
      author = "Keith Sheppard";
      homepage = "";
      url = "";
      synopsis = "A collection of command line utilities for processing text tables";
      description = "TxtSushi is a collection of command line utilities for processing\ncomma-separated and tab-delimited files (AKA flat files, spreadsheets).\nBy focusing exclusively on processing text files with a tabular structure,\nTxtSushi simplifies common tasks like filtering, joining and transformation\nthat would take some effort to accomplish with a more powerful scripting\nlanguage. TxtSushi's homepage is <http://keithsheppard.name/txt-sushi>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tssql" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.parsec)
          ];
        };
        "csvtotab" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.containers)
          ];
        };
        "tabtocsv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.containers)
          ];
        };
        "csvtopretty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.containers)
          ];
        };
        "tabtopretty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.directory)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }