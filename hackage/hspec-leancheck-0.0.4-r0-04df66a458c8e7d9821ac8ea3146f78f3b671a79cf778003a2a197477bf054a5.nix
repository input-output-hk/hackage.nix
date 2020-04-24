{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "hspec-leancheck"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/hspec-leancheck#readme";
      url = "";
      synopsis = "LeanCheck support for the Hspec test framework.";
      description = "LeanCheck support for the Hspec test framework.\n\nThis package can be used to incorporate LeanCheck tests into Hspec test\nsuites by means of the @Test.Hspec.LeanCheck.testProperty@ function.\n\nPlease see the Haddock documentation and README for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
          (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            (hsPkgs."hspec-leancheck" or ((hsPkgs.pkgs-errors).buildDepError "hspec-leancheck"))
            ];
          buildable = true;
          };
        "should" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            (hsPkgs."hspec-leancheck" or ((hsPkgs.pkgs-errors).buildDepError "hspec-leancheck"))
            ];
          buildable = true;
          };
        };
      };
    }