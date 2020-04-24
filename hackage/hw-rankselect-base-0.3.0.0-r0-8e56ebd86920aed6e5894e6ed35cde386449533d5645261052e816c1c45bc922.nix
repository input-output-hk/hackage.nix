{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bmi2 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-rankselect-base"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-rankselect-base#readme";
      url = "";
      synopsis = "Rank-select base";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bits-extra" or ((hsPkgs.pkgs-errors).buildDepError "bits-extra"))
          (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
          (hsPkgs."hw-int" or ((hsPkgs.pkgs-errors).buildDepError "hw-int"))
          (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
          (hsPkgs."hw-string-parse" or ((hsPkgs.pkgs-errors).buildDepError "hw-string-parse"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "hw-rankselect-base-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bits-extra" or ((hsPkgs.pkgs-errors).buildDepError "bits-extra"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
            (hsPkgs."hw-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hedgehog"))
            (hsPkgs."hw-hspec-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bits-extra" or ((hsPkgs.pkgs-errors).buildDepError "bits-extra"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
            (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }