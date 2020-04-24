{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "crackNum"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok";
      maintainer = "erkokl@gmail.com";
      author = "Levent Erkok";
      homepage = "";
      url = "";
      synopsis = "Crack various integer/floating-point data formats";
      description = "Crack various integer/floating-point data formats;\nHP/SP/DP floats and various sized words and integers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          ];
        buildable = true;
        };
      exes = {
        "crackNum" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
            (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
            ];
          buildable = true;
          };
        };
      };
    }