{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "AERN-Real"; version = "2011.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Michal Konecny, Jan Duracz";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny (Aston University)";
      homepage = "http://code.google.com/p/aern/";
      url = "";
      synopsis = "arbitrary precision real interval arithmetic";
      description = "Type classes abstracting typical approximate real number arithmetic operations\nincluding rounded\nfield operations and common elementary operations.\nTwo kinds of rounding are supported: rounding up/down in the numerical order\nor rounding in/out in a refinement order.\n\nA concrete implementation of refinement order rounded operations\nis given for intervals in the package AERN-Real-Interval.\nConcrete implementations of up/down rounded operations is\ngiven in AERN-Real-Double for ordinary Double\nfixed-precision numbers.  These can serve as interval\nendpoints.  In a future release also MPFR arbitrary-precision numbers\nwill be made available as interval endpoints.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          (hsPkgs."AERN-Basics" or (errorHandler.buildDepError "AERN-Basics"))
          ];
        buildable = true;
        };
      };
    }