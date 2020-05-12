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
      identifier = { name = "graphviz"; version = "2999.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Matthew Sackman, Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Matthew Sackman, Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "GraphViz bindings for Haskell.";
      description = "Provides convenient functions to convert FGL\ngraphs into the Dot language used by the\nGraphViz (<http://graphviz.org/>) suite of\nprograms with a large degree of customisation\nfor layout, etc.\nAlso allows a limited amount of parsing of Dot,\nand usage of GraphViz to attach positional data\nto each node and edge in the graph.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }