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
      identifier = { name = "pangraph"; version = "0.1.1.5"; };
      license = "BSD-3-Clause";
      copyright = "2017 Joe Scott";
      maintainer = "joseph-scott@hotmail.co.uk";
      author = "Joe Scott";
      homepage = "https://github.com/tuura/pangraph#readme";
      url = "";
      synopsis = "A set of parsers for graph languages.";
      description = "A package allowing parsing of graph files into graph library datatypes. With aim the cope with large networks and provide translations between graph libraries. Like a pandoc but for graphs. This is my first library so any feedback and help is appreicated. For example use please see the homepage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hexml" or (errorHandler.buildDepError "hexml"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
        ];
        buildable = true;
      };
      tests = {
        "pangraph-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pangraph" or (errorHandler.buildDepError "pangraph"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }