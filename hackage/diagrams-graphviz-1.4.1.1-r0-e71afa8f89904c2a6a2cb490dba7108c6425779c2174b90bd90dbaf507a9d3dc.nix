{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams-graphviz"; version = "1.4.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Brent Yorgey 2014,2015";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Graph layout and drawing with GraphViz and diagrams";
      description = "Use GraphViz and diagrams together, with each doing what\nit does best: GraphViz for laying out graphs, and diagrams\nfor drawing them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        buildable = true;
        };
      };
    }