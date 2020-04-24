{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "plotlyhs"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tanielsen@gmail.com";
      author = "Tom Nielsen";
      homepage = "https://github.com/glutamate/plotlyhs";
      url = "";
      synopsis = "Haskell bindings to Plotly.js";
      description = "Generate web-based plots with the Plotly.js library.\nFor examples, see <https://glutamate.github.io/plotlyhs/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          ];
        buildable = true;
        };
      exes = {
        "test-plotly" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."plotlyhs" or ((hsPkgs.pkgs-errors).buildDepError "plotlyhs"))
            (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            ];
          buildable = true;
          };
        };
      };
    }