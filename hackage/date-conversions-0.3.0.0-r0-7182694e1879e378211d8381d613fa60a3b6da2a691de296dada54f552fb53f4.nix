{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "date-conversions"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2017";
      maintainer = "jclayton@thoughtbot.com";
      author = "Josh Clayton";
      homepage = "https://github.com/thoughtbot/date-conversions#readme";
      url = "";
      synopsis = "Date conversions";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."dates" or ((hsPkgs.pkgs-errors).buildDepError "dates"))
          ];
        buildable = true;
        };
      tests = {
        "date-conversions-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."date-conversions" or ((hsPkgs.pkgs-errors).buildDepError "date-conversions"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."dates" or ((hsPkgs.pkgs-errors).buildDepError "dates"))
            ];
          buildable = true;
          };
        };
      };
    }