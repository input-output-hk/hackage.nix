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
      identifier = { name = "lp-diagrams"; version = "2.0"; };
      license = "AGPL-3.0-only";
      copyright = "Jean-Philippe Bernardy";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "An EDSL for diagrams based based on linear constraints";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."typography-geometry" or (errorHandler.buildDepError "typography-geometry"))
          (hsPkgs."gasp" or (errorHandler.buildDepError "gasp"))
          (hsPkgs."nonlinear-optimization" or (errorHandler.buildDepError "nonlinear-optimization"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."polynomials-bernstein" or (errorHandler.buildDepError "polynomials-bernstein"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."labeled-tree" or (errorHandler.buildDepError "labeled-tree"))
          ] ++ (pkgs.lib).optional (flags.graphviz) (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"));
        buildable = true;
        };
      };
    }