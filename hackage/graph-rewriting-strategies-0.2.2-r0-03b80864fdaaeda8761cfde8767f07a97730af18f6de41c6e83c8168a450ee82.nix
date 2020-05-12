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
      identifier = { name = "graph-rewriting-strategies"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2012, Robert Kreuzer, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Robert Kreuzer, Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "Evaluation strategies for port-graph rewriting systems";
      description = "Defines a mechanism to add evaluation strategies to graph rewriting systems defined in terms of the graph-rewriting library. Currently only leftmost-outermost reduction is implemented.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."graph-rewriting" or (errorHandler.buildDepError "graph-rewriting"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }