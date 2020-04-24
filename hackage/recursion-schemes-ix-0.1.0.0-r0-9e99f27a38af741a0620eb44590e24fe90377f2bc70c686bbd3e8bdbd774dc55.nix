{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "recursion-schemes-ix"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Skye Soss";
      maintainer = "skyler.soss@gmail.com";
      author = "Skye Soss";
      homepage = "https://github.com/Skyb0rg007/recursion-schemes-ix#readme";
      url = "";
      synopsis = "Recursion schemes over indexed Functors";
      description = "Please see the README on GitHub at <https://github.com/Skyb0rg007/recursion-schemes-ix#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."singlethongs" or ((hsPkgs.pkgs-errors).buildDepError "singlethongs"))
          ];
        buildable = true;
        };
      tests = {
        "recursion-schemes-ix-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."recursion-schemes-ix" or ((hsPkgs.pkgs-errors).buildDepError "recursion-schemes-ix"))
            (hsPkgs."singlethongs" or ((hsPkgs.pkgs-errors).buildDepError "singlethongs"))
            ];
          buildable = true;
          };
        };
      };
    }