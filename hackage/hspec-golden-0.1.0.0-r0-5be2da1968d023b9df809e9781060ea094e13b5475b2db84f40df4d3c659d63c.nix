{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hspec-golden"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Stack Builders Inc";
      maintainer = "cmotoche@stackbuilders.com";
      author = "Stack Builders";
      homepage = "https://github.com/stackbuilders/hspec-golden#readme";
      url = "";
      synopsis = "Golden tests for hspec";
      description = "Please see the README on GitHub at <https://github.com/stackbuilders/hspec-golden#README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
          ];
        buildable = true;
        };
      exes = {
        "hgold" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hspec-golden" or ((hsPkgs.pkgs-errors).buildDepError "hspec-golden"))
            (hsPkgs."simple-get-opt" or ((hsPkgs.pkgs-errors).buildDepError "simple-get-opt"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hspec-golden-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            (hsPkgs."hspec-golden" or ((hsPkgs.pkgs-errors).buildDepError "hspec-golden"))
            (hsPkgs."silently" or ((hsPkgs.pkgs-errors).buildDepError "silently"))
            ];
          buildable = true;
          };
        };
      };
    }