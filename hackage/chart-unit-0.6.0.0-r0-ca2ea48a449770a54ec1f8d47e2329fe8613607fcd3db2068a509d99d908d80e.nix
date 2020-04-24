{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chart-unit"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/chart-unit#readme";
      url = "";
      synopsis = "Native haskell charts.";
      description = "\n<<https://tonyday567.github.io/other/mainExample.svg>>\n\nchart-unit is a native haskell charting library designed:\n\n- as a chart DSL and algebra\n\n- towards a minimalist look and feel\n\n- to provide a set of default values that are robust across differet data and physical chart scales\n\n- around provision of a small but core set of chart types.\n\nSee <https://tonyday567.github.io/chart-unit/index.html chart-unit> for a chart gallery.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."SVGFonts" or ((hsPkgs.pkgs-errors).buildDepError "SVGFonts"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-svg"))
          (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
          (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
          (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."numhask" or ((hsPkgs.pkgs-errors).buildDepError "numhask"))
          (hsPkgs."numhask-range" or ((hsPkgs.pkgs-errors).buildDepError "numhask-range"))
          (hsPkgs."palette" or ((hsPkgs.pkgs-errors).buildDepError "palette"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."svg-builder" or ((hsPkgs.pkgs-errors).buildDepError "svg-builder"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "chart-unit-gallery" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chart-unit" or ((hsPkgs.pkgs-errors).buildDepError "chart-unit"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
            (hsPkgs."generic-lens-labels" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens-labels"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mwc-probability" or ((hsPkgs.pkgs-errors).buildDepError "mwc-probability"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."numhask" or ((hsPkgs.pkgs-errors).buildDepError "numhask"))
            (hsPkgs."numhask-histogram" or ((hsPkgs.pkgs-errors).buildDepError "numhask-histogram"))
            (hsPkgs."numhask-range" or ((hsPkgs.pkgs-errors).buildDepError "numhask-range"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        "chart-unit-main-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chart-unit" or ((hsPkgs.pkgs-errors).buildDepError "chart-unit"))
            (hsPkgs."generic-lens-labels" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens-labels"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."numhask" or ((hsPkgs.pkgs-errors).buildDepError "numhask"))
            (hsPkgs."numhask-range" or ((hsPkgs.pkgs-errors).buildDepError "numhask-range"))
            ];
          buildable = true;
          };
        "chart-unit-source-examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chart-unit" or ((hsPkgs.pkgs-errors).buildDepError "chart-unit"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."generic-lens-labels" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens-labels"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."numhask" or ((hsPkgs.pkgs-errors).buildDepError "numhask"))
            (hsPkgs."numhask-range" or ((hsPkgs.pkgs-errors).buildDepError "numhask-range"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chart-unit" or ((hsPkgs.pkgs-errors).buildDepError "chart-unit"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."numhask" or ((hsPkgs.pkgs-errors).buildDepError "numhask"))
            (hsPkgs."numhask-range" or ((hsPkgs.pkgs-errors).buildDepError "numhask-range"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            ];
          buildable = true;
          };
        };
      };
    }