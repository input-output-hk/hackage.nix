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
      specVersion = "1.2";
      identifier = { name = "DBlimited"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jpmayer@seas.upenn.edu";
      author = "John P Mayer";
      homepage = "http://projects.haskell.org/DBlimited/";
      url = "";
      synopsis = "A command-line SQL interface for flat files (tdf,csv,etc.)";
      description = "DBlimited requires a schema file defining the psuedo-tables. Each table is actually a flat file with a name, absolute path, delimiter character, and column definition.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "DBlimited" = {
          depends = [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
          buildable = true;
        };
      };
    };
  }