{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "marxup"; version = "3.0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Markup language preprocessor for Haskell";
      description = "Markup syntax preprocessor for Haskell. Steals ideas from the Scribble project (in Scheme).\nThe package also provides a DSL to output Latex seamlessly from MarXup output.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."labeled-tree" or ((hsPkgs.pkgs-errors).buildDepError "labeled-tree"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."glpk-hs" or ((hsPkgs.pkgs-errors).buildDepError "glpk-hs"))
          (hsPkgs."cubicbezier" or ((hsPkgs.pkgs-errors).buildDepError "cubicbezier"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."typography-geometry" or ((hsPkgs.pkgs-errors).buildDepError "typography-geometry"))
          (hsPkgs."polynomials-bernstein" or ((hsPkgs.pkgs-errors).buildDepError "polynomials-bernstein"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "marxup3" = {
          depends = [
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."parsek" or ((hsPkgs.pkgs-errors).buildDepError "parsek"))
            (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
            ];
          buildable = true;
          };
        };
      };
    }