{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gitHUD"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Grégory Bataille 2015";
      maintainer = "gbataille.dev@gmail.com";
      author = "Grégory Bataille";
      homepage = "http://github.com/gbataille/gitHUD#readme";
      url = "";
      synopsis = "More efficient replacement to the great git-radar";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "gitHUD" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gitHUD" or ((hsPkgs.pkgs-errors).buildDepError "gitHUD"))
            ];
          buildable = true;
          };
        };
      tests = {
        "gitHUD-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."gitHUD" or ((hsPkgs.pkgs-errors).buildDepError "gitHUD"))
            ];
          buildable = true;
          };
        };
      };
    }