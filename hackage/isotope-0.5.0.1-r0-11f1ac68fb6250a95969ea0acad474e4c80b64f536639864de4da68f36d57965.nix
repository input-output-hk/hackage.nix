{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "isotope"; version = "0.5.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2015 Michael Thomas";
      maintainer = "Michaelt293@gmail.com";
      author = "Michael Thomas";
      homepage = "https://github.com/Michaelt293/Element-isotopes/blob/master/README.md";
      url = "";
      synopsis = "Isotopic masses and relative abundances.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
          ];
        buildable = true;
        };
      tests = {
        "Element-isotopes-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."isotope" or ((hsPkgs.pkgs-errors).buildDepError "isotope"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            ];
          buildable = true;
          };
        };
      };
    }