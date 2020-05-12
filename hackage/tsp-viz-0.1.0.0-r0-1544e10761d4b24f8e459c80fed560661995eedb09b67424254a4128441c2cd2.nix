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
      specVersion = "1.8";
      identifier = { name = "tsp-viz"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nilsson.dd+code@gmail.com";
      author = "David Nilsson";
      homepage = "https://github.com/davnils/tsp-viz";
      url = "";
      synopsis = "Real time TSP tour visualization.";
      description = "Real time TSP tour visualization using Gloss.\nThis program is used as a standalone binary and exposes an interface which\ncommunicates over a stream, such as stdout or a file handle.\nIt supports a single set vertices with multiple tours rendered and updated\nduring execution, with overlapping edges being bended appropriately.\nCurrently there is only a C++ interface available in the git repository.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tsp-viz" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            ];
          buildable = true;
          };
        };
      };
    }