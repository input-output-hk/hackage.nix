{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "AERN-Real";
        version = "2011.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Michal Konecny, Jan Duracz";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny (Aston University)";
      homepage = "http://code.google.com/p/aern/";
      url = "";
      synopsis = "arbitrary precision real interval arithmetic";
      description = "Type classes abstracting typical approximate real number arithmetic operations\nincluding rounded\nfield operations and common elementary operations.\nTwo kinds of rounding are supported: rounding up/down in the numerical order\nor rounding in/out in a refinement order.\n\nA concrete implementation of refinement order rounded operations\nis given for intervals in the package AERN-Real-Interval.\nConcrete implementations of up/down rounded operations is\ngiven in AERN-Real-Double for ordinary Double\nfixed-precision numbers.  These can serve as interval\nendpoints.  In a future release also MPFR arbitrary-precision numbers\nwill be made available as interval endpoints.\n\nThis package does not compile with ghc 7.0.* due to a\ncompiler bug that has been fixed for the 7.2.1 release.\nHaddock documentation can be found via <http://code.google.com/p/aern/wiki/Main>.";
      buildType = "Simple";
    };
    components = {
      "AERN-Real" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.criterion)
          (hsPkgs.AERN-Basics)
        ];
      };
    };
  }