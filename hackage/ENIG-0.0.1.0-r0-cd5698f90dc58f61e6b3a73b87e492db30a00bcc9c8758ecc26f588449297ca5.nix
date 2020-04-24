{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ENIG"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 YongJoon Joe";
      maintainer = "developer+ENIG@quietjoon.net";
      author = "YongJoon Joe";
      homepage = "https://github.com/QuietJoon/ENIG#readme";
      url = "";
      synopsis = "Auto Korean conjugator/adjustor/adopter/converter";
      description = "Please see the README on GitHub at <https://github.com/QuietJoon/ENIG#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unicode-transforms" or ((hsPkgs.pkgs-errors).buildDepError "unicode-transforms"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "ENIG-test" = {
          depends = [
            (hsPkgs."ENIG" or ((hsPkgs.pkgs-errors).buildDepError "ENIG"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unicode-transforms" or ((hsPkgs.pkgs-errors).buildDepError "unicode-transforms"))
            ];
          buildable = true;
          };
        };
      };
    }