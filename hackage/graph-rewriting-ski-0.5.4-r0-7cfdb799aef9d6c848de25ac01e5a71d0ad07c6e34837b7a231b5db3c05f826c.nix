{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graph-rewriting-ski"; version = "0.5.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "";
      url = "";
      synopsis = "Two implementations of the SKI combinators as interactive graph rewrite systems";
      description = "This package serves as an example for how to use the graph-rewriting, graph-rewriting-layout, and graph-rewriting-gl packages to create a graph rewriting system with an interactive, graphical front-end. The SKI combinator calculus is implemented once as an interaction net with combinators that accumulate their arguments, and once in a more direct manner. The sources (of the interaction net implementation) are well documented and serve as a tutorial for implementing your own rewrite system. Start reading in INet/Graph.hs. To run the program run either the \"ski-inet\" or the \"ski-direct\" command with one of the files in the \"examples\" directory as an argument.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."graph-rewriting" or ((hsPkgs.pkgs-errors).buildDepError "graph-rewriting"))
          (hsPkgs."graph-rewriting-layout" or ((hsPkgs.pkgs-errors).buildDepError "graph-rewriting-layout"))
          (hsPkgs."graph-rewriting-gl" or ((hsPkgs.pkgs-errors).buildDepError "graph-rewriting-gl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      exes = {
        "ski-inet" = { buildable = true; };
        "ski-direct" = { buildable = true; };
        };
      };
    }