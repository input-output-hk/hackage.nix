{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graph-rewriting-strategies"; version = "0.2.4"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."graph-rewriting" or ((hsPkgs.pkgs-errors).buildDepError "graph-rewriting"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }