{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aws-ses-easy"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Vargas";
      author = "Joe Vargas";
      homepage = "https://github.com/jxv/aws-ses-easy#readme";
      url = "";
      synopsis = "Wrapper over Amazonka's SES";
      description = "Opinionated use of Amazonka's SES for ease";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka" or ((hsPkgs.pkgs-errors).buildDepError "amazonka"))
          (hsPkgs."amazonka-ses" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-ses"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-conversions" or ((hsPkgs.pkgs-errors).buildDepError "text-conversions"))
          ];
        buildable = true;
        };
      tests = {
        "aws-ses-easy-test-suite" = {
          depends = [
            (hsPkgs."aws-ses-easy" or ((hsPkgs.pkgs-errors).buildDepError "aws-ses-easy"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "aws-ses-easy-benchmarks" = {
          depends = [
            (hsPkgs."aws-ses-easy" or ((hsPkgs.pkgs-errors).buildDepError "aws-ses-easy"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }