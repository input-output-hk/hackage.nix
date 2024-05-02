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
      specVersion = "1.10";
      identifier = { name = "lsql-csv"; version = "0.1.0.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "p-w@stty.cz";
      author = "Přemysl Šťastný";
      homepage = "https://github.com/stastnypremysl/lsql-csv/";
      url = "";
      synopsis = "A tool for CSV files data querying from the shell with short queries. ";
      description = "lsql-csv is a tool for small CSV file data querying from a shell with short queries. It makes it possible to work with small CSV files like with a read-only relational databases. The tool implements a new language LSQL similar to SQL, specifically designed for working with CSV files in a shell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "lsql-csv" = {
          depends = [
            (hsPkgs."lsql-csv" or (errorHandler.buildDepError "lsql-csv"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }