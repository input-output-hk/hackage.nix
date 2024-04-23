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
    flags = { graphviz = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "lp-diagrams"; version = "2.1.3"; };
      license = "AGPL-3.0-only";
      copyright = "Jean-Philippe Bernardy";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "An EDSL for diagrams based based on linear constraints";
      description = "A library to describe diagrams. The defining\nfeature of the package is the ability to use linear constraints to\nspecify layout, which are resolved using z3 (latest z3 must be installed).\nBackends are provided either of the following packages lp-diagrams-svg (svg) or marxup (tikz).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."typography-geometry" or (errorHandler.buildDepError "typography-geometry"))
          (hsPkgs."gasp" or (errorHandler.buildDepError "gasp"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."polynomials-bernstein" or (errorHandler.buildDepError "polynomials-bernstein"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."labeled-tree" or (errorHandler.buildDepError "labeled-tree"))
          (hsPkgs."parsek" or (errorHandler.buildDepError "parsek"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ] ++ pkgs.lib.optional (flags.graphviz) (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"));
        buildable = true;
      };
    };
  }