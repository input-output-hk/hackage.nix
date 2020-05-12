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
      identifier = { name = "dot2graphml"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "http://redmine.iportnov.ru/projects/dot2graphml";
      url = "";
      synopsis = "Converter from GraphViz .dot format to yEd GraphML";
      description = "This package contains a converter from DOT format used by\nGraphViz (http://graphviz.org) to variant of GraphML\n(http://graphml.graphdrawing.org/) used by yEd\n(http://www.yworks.com/en/products_yed_about.html).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dot2graphml" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }