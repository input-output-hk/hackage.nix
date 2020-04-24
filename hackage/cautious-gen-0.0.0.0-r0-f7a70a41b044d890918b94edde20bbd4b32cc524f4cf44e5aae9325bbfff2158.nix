{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cautious-gen"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Nick Van den Broeck";
      maintainer = "nick.van.den.broeck666@gmail.com";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/Nickske666/cautious#readme";
      url = "";
      synopsis = "";
      description = "GenValid instances for Cautious and CautiousT";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cautious" or ((hsPkgs.pkgs-errors).buildDepError "cautious"))
          (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
          ];
        buildable = true;
        };
      tests = {
        "cautious-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cautious" or ((hsPkgs.pkgs-errors).buildDepError "cautious"))
            (hsPkgs."cautious-gen" or ((hsPkgs.pkgs-errors).buildDepError "cautious-gen"))
            (hsPkgs."genvalidity" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-aeson" or ((hsPkgs.pkgs-errors).buildDepError "genvalidity-hspec-aeson"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }