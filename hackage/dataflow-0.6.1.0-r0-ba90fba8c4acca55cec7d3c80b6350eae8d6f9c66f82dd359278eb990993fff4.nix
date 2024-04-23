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
      identifier = { name = "dataflow"; version = "0.6.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Sony Mobile Communications";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström (Sony Mobile Communications)";
      homepage = "https://github.com/sonyxperiadev/dataflow";
      url = "";
      synopsis = "Generate Graphviz documents from a Haskell representation.";
      description = "Render graphs using a declarative markup. Currently\nsupports DFD (http://en.wikipedia.org/wiki/Data_flow_diagram)\nand sequence diagrams (http://plantuml.sourceforge.net/sequence.html).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      exes = {
        "dataflow" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dataflow" or (errorHandler.buildDepError "dataflow"))
          ];
          buildable = true;
        };
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