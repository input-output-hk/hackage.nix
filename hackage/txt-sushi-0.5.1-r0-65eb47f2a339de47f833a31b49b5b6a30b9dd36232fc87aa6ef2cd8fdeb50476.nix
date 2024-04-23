{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "txt-sushi"; version = "0.5.1"; };
      license = "BSD-3-Clause";
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
        ];
        buildable = true;
      };
      exes = {
        "tssql" = { buildable = true; };
        "csvtotab" = { buildable = true; };
        "tabtocsv" = { buildable = true; };
        "csvtopretty" = { buildable = true; };
        "tabtopretty" = { buildable = true; };
        "namecolumns" = { buildable = true; };
        "transposecsv" = { buildable = true; };
        "transposetab" = { buildable = true; };
      };
    };
  }