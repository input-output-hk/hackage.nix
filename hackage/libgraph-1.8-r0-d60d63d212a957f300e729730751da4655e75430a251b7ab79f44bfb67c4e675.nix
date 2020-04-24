{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "libgraph"; version = "1.8"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Maarten Faddegon";
      maintainer = "libgraph@maartenfaddegon.nl";
      author = "Maarten Faddegon";
      homepage = "http://maartenfaddegon.nl";
      url = "";
      synopsis = "Store and manipulate data in a graph.";
      description = "A graph type, analysis of graphs and manipulation of graphs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          (hsPkgs."union-find" or ((hsPkgs.pkgs-errors).buildDepError "union-find"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }