{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graph-visit"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "atze@uu.nl";
      author = "Atze Dijkstra";
      homepage = "https://github.com/atzedijkstra/graph-visit";
      url = "";
      synopsis = "Graph walk abstraction";
      description = "Walk over a graph, abstracting away from the underlying representation, not caring about precise order";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
          (hsPkgs."data-lens-template" or ((hsPkgs.pkgs-errors).buildDepError "data-lens-template"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }