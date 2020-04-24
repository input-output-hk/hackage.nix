{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hall-symbols"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Jun Narumi";
      maintainer = "narumij@gmail.com";
      author = "Jun Narumi";
      homepage = "https://github.com/narumij/hall-symbols#readme";
      url = "";
      synopsis = "Symmetry operations generater of Hall Symbols";
      description = "Please see the README on GitHub at <https://github.com/narumij/hall-symbols#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
          (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "hall-symbols-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."hall-symbols" or ((hsPkgs.pkgs-errors).buildDepError "hall-symbols"))
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