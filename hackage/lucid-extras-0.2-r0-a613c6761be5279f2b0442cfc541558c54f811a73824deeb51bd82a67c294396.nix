{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lucid-extras"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Nielsen <tanielsen@gmail.com>";
      author = "Tom Nielsen <tanielsen@gmail.com>";
      homepage = "https://github.com/diffusionkinetics/open/lucid-extras";
      url = "";
      synopsis = "Generate more HTML with Lucid";
      description = "Generate more HTML with Lucid - Bootstrap, Rdash, Vega-Lite, Email.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "site-gen" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."lucid-extras" or ((hsPkgs.pkgs-errors).buildDepError "lucid-extras"))
            (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
            ];
          buildable = true;
          };
        };
      };
    }