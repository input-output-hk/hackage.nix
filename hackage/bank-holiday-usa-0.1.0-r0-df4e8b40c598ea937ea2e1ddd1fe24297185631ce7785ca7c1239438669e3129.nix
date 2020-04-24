{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bank-holiday-usa"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2015 brady.ouren <brady.ouren@gmail.com>";
      maintainer = "brady.ouren <brady.ouren@gmail.com>";
      author = "brady.ouren <brady.ouren@gmail.com>";
      homepage = "https://github.com/tippenein/BankHoliday";
      url = "";
      synopsis = "A library for determining US bank holidays";
      description = "A library for determining US bank holidays";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bank-holiday-usa" or ((hsPkgs.pkgs-errors).buildDepError "bank-holiday-usa"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }