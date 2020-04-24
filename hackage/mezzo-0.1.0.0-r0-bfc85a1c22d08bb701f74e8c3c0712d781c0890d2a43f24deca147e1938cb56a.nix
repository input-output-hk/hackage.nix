{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mezzo"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Dima Samozvancev";
      maintainer = "ds709@cam.ac.uk";
      author = "Dima Szamozvancev";
      homepage = "https://github.com/DimaSamoz/mezzo#readme";
      url = "";
      synopsis = "Typesafe music composition";
      description = "A Haskell music composition library that enforces common\nmusical rules in the type system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."HCodecs" or ((hsPkgs.pkgs-errors).buildDepError "HCodecs"))
          (hsPkgs."boxes" or ((hsPkgs.pkgs-errors).buildDepError "boxes"))
          ];
        buildable = true;
        };
      exes = {
        "mezzo-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mezzo" or ((hsPkgs.pkgs-errors).buildDepError "mezzo"))
            ];
          buildable = true;
          };
        };
      tests = {
        "mezzo-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mezzo" or ((hsPkgs.pkgs-errors).buildDepError "mezzo"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."should-not-typecheck" or ((hsPkgs.pkgs-errors).buildDepError "should-not-typecheck"))
            ];
          buildable = true;
          };
        };
      };
    }