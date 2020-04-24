{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graph-rewriting-trs"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "Evaluate a first-order term rewrite system interactively using graph reduction";
      description = "Given a set of term rewriting rules and an initial term with this tool you can interactively evaluate the corresponding term graph. The employed rule set has to be defined in one or more files. In the examples-directory a few rewriting systems are already supplied. To see how it works invoke the with the SKI-combinator rules and an initial term as arguments: @trs examples/ski.trs \"SK(S(KIS)K)I\"@. On how to interact with the application see the \"GraphRewriting.GL.UI\" module of the graph-rewriting-gl package.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "trs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
            (hsPkgs."graph-rewriting" or ((hsPkgs.pkgs-errors).buildDepError "graph-rewriting"))
            (hsPkgs."graph-rewriting-layout" or ((hsPkgs.pkgs-errors).buildDepError "graph-rewriting-layout"))
            (hsPkgs."graph-rewriting-gl" or ((hsPkgs.pkgs-errors).buildDepError "graph-rewriting-gl"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }