{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "crackNum"; version = "1.7"; };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok";
      maintainer = "erkokl@gmail.com";
      author = "Levent Erkok";
      homepage = "";
      url = "";
      synopsis = "Crack various integer, floating-point data formats";
      description = "Crack HP, SP and DP floats and 8, 16, 32, 64 bit words and integers.\n\nFor details, please see: <http://github.com/LeventErkok/crackNum/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."FloatingHex" or ((hsPkgs.pkgs-errors).buildDepError "FloatingHex"))
          ];
        buildable = true;
        };
      exes = {
        "crackNum" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
            (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
            (hsPkgs."FloatingHex" or ((hsPkgs.pkgs-errors).buildDepError "FloatingHex"))
            ];
          buildable = true;
          };
        };
      };
    }