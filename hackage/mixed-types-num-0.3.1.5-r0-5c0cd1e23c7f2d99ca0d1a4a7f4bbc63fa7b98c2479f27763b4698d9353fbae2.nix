{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "mixed-types-num"; version = "0.3.1.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2018 Michal Konecny";
      maintainer = "Michal Konecny <mikkonecny@gmail.com>";
      author = "Michal Konecny";
      homepage = "https://github.com/michalkonecny/mixed-types-num";
      url = "";
      synopsis = "Alternative Prelude with numeric and logic expressions typed bottom-up";
      description = "This package provides a version of Prelude where\nunary and binary operations such as @not@, @+@, @==@\nhave their result type derived from the parameter type(s)\nand thus supports mixed-type arithmetic and comparisons.\n\nPartial operations such as division, sqrt and power\ndo not throw exceptions even when errors such as division by zero\noccur.  Instead, these errors are propagated bottom-up in\na bespoke error-accumulating functor.\n\nThis library is a by-product of developing the\n<https://github.com/michalkonecny/aern2 AERN2> library for interval and exact real computation.\nCertain aspects are specifically tailored for interval or exact real arithmetics,\nincluding three-valued numerical comparisons\nand distinguishing potential and certain errors.\n\nSee module \"MixedTypesNumPrelude\" for further documentation.\n\n/Ghci 8.0.* fails when loading this package/ due to ghc bug <https://ghc.haskell.org/trac/ghc/ticket/13385#ticket 13385>.\nThis bug does not affect ghci 7.10.3 and ghci 8.2.* and above.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."hspec-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "hspec-smallcheck"))
          (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mixed-types-num" or ((hsPkgs.pkgs-errors).buildDepError "mixed-types-num"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "hspec-smallcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }