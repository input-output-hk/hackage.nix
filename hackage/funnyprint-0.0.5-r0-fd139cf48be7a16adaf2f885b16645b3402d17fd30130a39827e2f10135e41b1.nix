{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "funnyprint"; version = "0.0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "Yuriy Pitomets";
      author = "";
      homepage = "https://github.com/Pitometsu/funnyprint#readme";
      url = "";
      synopsis = "funnyPrint function to colorize GHCi output.";
      description = "see FunnyPrint.funnyPrint.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"))
          (hsPkgs."ipprint" or ((hsPkgs.pkgs-errors).buildDepError "ipprint"))
          ];
        buildable = true;
        };
      tests = {
        "funnyprint-test-suite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"))
            (hsPkgs."ipprint" or ((hsPkgs.pkgs-errors).buildDepError "ipprint"))
            (hsPkgs."funnyprint" or ((hsPkgs.pkgs-errors).buildDepError "funnyprint"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "funnyprint-benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"))
            (hsPkgs."ipprint" or ((hsPkgs.pkgs-errors).buildDepError "ipprint"))
            (hsPkgs."funnyprint" or ((hsPkgs.pkgs-errors).buildDepError "funnyprint"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }