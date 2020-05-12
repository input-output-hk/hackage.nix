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
      identifier = { name = "dataflow"; version = "0.5.2.0"; };
      license = "MIT";
      copyright = "oskar.wickstrom@gmail.com";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "https://github.com/owickstrom/dataflow";
      url = "";
      synopsis = "Generate Graphviz documents from a Haskell representation.";
      description = "Outputs .dot files that can be processed by the dot\ncommand. Currently it only supports the DFD output format\n(http://en.wikipedia.org/wiki/Data_flow_diagram). Support\nfor a Graphviz-like input format (instead of using the\ndata structures in Haskell) is planned.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."dataflow" or (errorHandler.buildDepError "dataflow"))
            ];
          buildable = true;
          };
        };
      };
    }