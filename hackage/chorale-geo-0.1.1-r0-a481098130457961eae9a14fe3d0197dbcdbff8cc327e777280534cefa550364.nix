{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "chorale-geo"; version = "0.1.1"; };
      license = "MIT";
      copyright = "2014-2016 Franz-Benjamin Mocnik";
      maintainer = "Franz-Benjamin Mocnik <mail@mocnik-science.net>";
      author = "Franz-Benjamin Mocnik <mail@mocnik-science.net>";
      homepage = "https://github.com/mocnik-science/chorale-geo";
      url = "";
      synopsis = "A module containing basic geo functions";
      description = "Chorale-Geo is a Haskell module that contains basic functions for geo\napplications";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."chorale" or ((hsPkgs.pkgs-errors).buildDepError "chorale"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."chorale" or ((hsPkgs.pkgs-errors).buildDepError "chorale"))
            (hsPkgs."chorale-geo" or ((hsPkgs.pkgs-errors).buildDepError "chorale-geo"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }