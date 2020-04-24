{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "lp-diagrams-svg"; version = "1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "SVG Backend for lp-diagrams";
      description = "SVG backend for lp-diagrams";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."lp-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "lp-diagrams"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lucid-svg" or ((hsPkgs.pkgs-errors).buildDepError "lucid-svg"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."svg-tree" or ((hsPkgs.pkgs-errors).buildDepError "svg-tree"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."FontyFruity" or ((hsPkgs.pkgs-errors).buildDepError "FontyFruity"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."gasp" or ((hsPkgs.pkgs-errors).buildDepError "gasp"))
          ];
        buildable = true;
        };
      exes = {
        "lp-diagrams-svg-example" = {
          depends = [
            (hsPkgs."lp-diagrams-svg" or ((hsPkgs.pkgs-errors).buildDepError "lp-diagrams-svg"))
            (hsPkgs."lp-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "lp-diagrams"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."FontyFruity" or ((hsPkgs.pkgs-errors).buildDepError "FontyFruity"))
            (hsPkgs."gasp" or ((hsPkgs.pkgs-errors).buildDepError "gasp"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }