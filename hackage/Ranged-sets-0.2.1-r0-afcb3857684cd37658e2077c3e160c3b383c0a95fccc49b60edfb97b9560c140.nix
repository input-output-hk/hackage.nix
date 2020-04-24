{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Ranged-sets"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Paul Johnson, 2005, 2006, 2007, 2008";
      maintainer = "paul@cogito.org.uk";
      author = "Paul Johnson";
      homepage = "http://code.haskell.org/ranged-sets";
      url = "";
      synopsis = "Ranged sets for Haskell";
      description = "A ranged set is an ordered list of ranges.  This allows sets\nsuch as all reals x such that\n(0.25 < x <= 0.75 or 1.4 <= x < 2.3 or 4.5 < x).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          ];
        buildable = true;
        };
      };
    }