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
      identifier = { name = "ag-pictgen"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Arie Middelkoop, Atze Dijkstra";
      maintainer = "Atze Dijkstra <atzedijkstra@gmail.com>";
      author = "Arie Middelkoop <amiddelk@gmail.com>";
      homepage = "https://github.com/UU-ComputerScience/ag-pictgen";
      url = "";
      synopsis = "Attribute Grammar picture generation";
      description = "Attribute Grammar picture generation";
      buildType = "Custom";
    };
    components = {
      exes = {
        "ag-pictgen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }