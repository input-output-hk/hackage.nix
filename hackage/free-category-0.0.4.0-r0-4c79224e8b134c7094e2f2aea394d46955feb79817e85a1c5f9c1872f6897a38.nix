{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "free-category"; version = "0.0.4.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2018-2019 Marcin Szamotulski";
      maintainer = "profunctor@pm.me";
      author = "Marcin Szamotulski";
      homepage = "https://github.com/coot/free-category#readme";
      url = "";
      synopsis = "Free category";
      description = "Free categories";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."free-algebras" or ((hsPkgs.pkgs-errors).buildDepError "free-algebras"))
          ];
        buildable = true;
        };
      tests = {
        "test-cats" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."free-algebras" or ((hsPkgs.pkgs-errors).buildDepError "free-algebras"))
            (hsPkgs."free-category" or ((hsPkgs.pkgs-errors).buildDepError "free-category"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-cats" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."free-category" or ((hsPkgs.pkgs-errors).buildDepError "free-category"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }