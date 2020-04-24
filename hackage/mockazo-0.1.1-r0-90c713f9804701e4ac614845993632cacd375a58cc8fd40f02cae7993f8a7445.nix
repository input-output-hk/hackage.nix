{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "mockazo"; version = "0.1.1"; };
      license = "MIT";
      copyright = "2019 The Agile Monkeys";
      maintainer = "hackers@theagilemonkeys.com";
      author = "The Agile Monkeys";
      homepage = "https://github.com/theam/mockazo#readme";
      url = "";
      synopsis = "Mock records of functions easily";
      description = "Please see the README on GitHub at <https://github.com/theam/mockazo#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."multistate" or ((hsPkgs.pkgs-errors).buildDepError "multistate"))
          (hsPkgs."relude" or ((hsPkgs.pkgs-errors).buildDepError "relude"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "mockazo-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."mockazo" or ((hsPkgs.pkgs-errors).buildDepError "mockazo"))
            (hsPkgs."multistate" or ((hsPkgs.pkgs-errors).buildDepError "multistate"))
            (hsPkgs."relude" or ((hsPkgs.pkgs-errors).buildDepError "relude"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }