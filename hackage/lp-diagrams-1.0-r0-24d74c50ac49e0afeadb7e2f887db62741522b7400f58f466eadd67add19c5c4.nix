{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { graphviz = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "lp-diagrams"; version = "1.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."typography-geometry" or ((hsPkgs.pkgs-errors).buildDepError "typography-geometry"))
          (hsPkgs."glpk-hs" or ((hsPkgs.pkgs-errors).buildDepError "glpk-hs"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."polynomials-bernstein" or ((hsPkgs.pkgs-errors).buildDepError "polynomials-bernstein"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."labeled-tree" or ((hsPkgs.pkgs-errors).buildDepError "labeled-tree"))
          ] ++ (pkgs.lib).optional (flags.graphviz) (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"));
        buildable = true;
        };
      };
    }