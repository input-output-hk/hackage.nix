{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "AERN-Real-Interval"; version = "2011.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Michal Konecny, Jan Duracz";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny (Aston University)";
      homepage = "http://code.google.com/p/aern/";
      url = "";
      synopsis = "arbitrary precision real interval arithmetic";
      description = "A concrete implementation for the refinement-order type classes from AERN-Real in the form\nof interval arithmetic.  The arithmetic supports also anti-consistent\nintervals (ie @[l,r]@ with @l >= r@) and maintains monotonicity in the\nrefinement order so that both inner and outer approximations of exact interval\nexpressions can be safely computed.\n\nThe package AERN-Real-Double makes it possible to use ordinary\nmachine 'Double' values as endpoints, although limited to its fixed granularity (ie precision).\n\nA package AERN-Real-MPFR will be provided in future to facilitate (via package hmpfr)\nthe use of the MPFR arbitrary granularity (ie precision) floating point numbers\nas endpoints.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
          (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."AERN-Basics" or ((hsPkgs.pkgs-errors).buildDepError "AERN-Basics"))
          (hsPkgs."AERN-Real" or ((hsPkgs.pkgs-errors).buildDepError "AERN-Real"))
          ];
        buildable = true;
        };
      };
    }