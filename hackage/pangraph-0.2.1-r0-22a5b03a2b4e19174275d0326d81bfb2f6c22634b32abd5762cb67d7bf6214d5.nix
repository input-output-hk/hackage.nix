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
      identifier = { name = "pangraph"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Joesph Scott";
      maintainer = "joseph-scott@hotmail.co.uk";
      author = "Joe Scott";
      homepage = "https://github.com/tuura/pangraph#readme";
      url = "";
      synopsis = "A set of parsers for graph languages and conversions to\ngraph libaries.";
      description = "A package allowing parsing of graph files into graph\nlibrary datatypes. With aim the cope with large networks\nand provide translations between graph libraries. Like a\npandoc but for graphs. This is my first library so any\nfeedback and help is appreicated. For example use please\nsee the homepage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."hexml" or (errorHandler.buildDepError "hexml"))
          (hsPkgs."html-entities" or (errorHandler.buildDepError "html-entities"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "pangraph-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."pangraph" or (errorHandler.buildDepError "pangraph"))
            ];
          buildable = true;
          };
        };
      };
    }