{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "tasty-leancheck"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/tasty-leancheck#readme";
      url = "";
      synopsis = "LeanCheck support for the Tasty test framework.";
      description = "LeanCheck support for the Tasty test framework.\n\nThis package can be used to incorporate LeanCheck tests into Tasty test\nsuites by means of the @Test.Tasty.LeanCheck.testProperty@ function.\n\nPlease see the Haddock documentation and README for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."leancheck" or ((hsPkgs.pkgs-errors).buildDepError "leancheck"))
            (hsPkgs."tasty-leancheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-leancheck"))
            ];
          buildable = true;
          };
        };
      };
    }