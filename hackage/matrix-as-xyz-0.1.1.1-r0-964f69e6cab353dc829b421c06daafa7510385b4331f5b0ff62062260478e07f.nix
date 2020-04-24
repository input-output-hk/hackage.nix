{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "matrix-as-xyz"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Jun Narumi";
      maintainer = "narumij@gmail.com";
      author = "Jun Narumi";
      homepage = "https://github.com/narumij/matrix-as-xyz#readme";
      url = "";
      synopsis = "Read and Display representation of matrix like \"x,y,z\"";
      description = "Please see the README on GitHub at <https://github.com/narumij/matrix-as-xyz#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "matrix-as-xyz-doctest" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
            (hsPkgs."matrix-as-xyz" or ((hsPkgs.pkgs-errors).buildDepError "matrix-as-xyz"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        "matrix-as-xyz-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
            (hsPkgs."matrix-as-xyz" or ((hsPkgs.pkgs-errors).buildDepError "matrix-as-xyz"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }