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
      identifier = { name = "graphviz"; version = "2009.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Matthew Sackman, Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Matthew Sackman, Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "GraphViz wrapper for Haskell.";
      description = "Provides convenient functions to convert FGL graphs into the Dot\nlanguage used by the GraphViz (http://graphviz.org/) programs with a\nlarge degree of customisation for layout, etc.\nAlso allows a limited amount of parsing of Dot, and usage of\nGraphViz to attach positional data to each node and edge in the\ngraph.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
        ];
        buildable = true;
      };
    };
  }