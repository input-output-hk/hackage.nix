{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quickcheck-arbitrary-adt"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 James M.C. Haver II";
      maintainer = "mchaver@gmail.com";
      author = "James M.C. Haver II";
      homepage = "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme";
      url = "";
      synopsis = "Generic typeclasses for generating arbitrary ADTs";
      description = "Improve arbitrary value generation for ADTs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-arbitrary-adt" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-arbitrary-adt"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }