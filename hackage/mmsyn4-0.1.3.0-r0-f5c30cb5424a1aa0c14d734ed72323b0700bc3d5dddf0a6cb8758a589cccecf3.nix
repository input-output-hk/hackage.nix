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
      identifier = { name = "mmsyn4"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn4";
      url = "";
      synopsis = "The \"glue\" between electronic tables and GraphViz";
      description = "The program mmsyn4 converts a specially formated .csv file with a colon as a field separator obtained from the electronic table into a visualized by GraphViz graph.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mmsyn4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mmsyn2" or (errorHandler.buildDepError "mmsyn2"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mmsyn3" or (errorHandler.buildDepError "mmsyn3"))
            ];
          buildable = true;
          };
        };
      };
    }