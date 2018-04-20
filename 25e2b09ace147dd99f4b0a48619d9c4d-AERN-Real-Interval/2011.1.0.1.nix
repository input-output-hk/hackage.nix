{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "AERN-Real-Interval";
          version = "2011.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Michal Konecny, Jan Duracz";
        maintainer = "mikkonecny@gmail.com";
        author = "Michal Konecny (Aston University)";
        homepage = "http://code.google.com/p/aern/";
        url = "";
        synopsis = "arbitrary precision real interval arithmetic";
        description = "A concrete implementation for the refinement-order type classes from AERN-Real in the form\nof interval arithmetic.  The arithmetic supports also anti-consistent\nintervals (ie @[l,r]@ with @l >= r@) and maintains monotonicity in the\nrefinement order so that both inner and outer approximations of exact interval\nexpressions can be safely computed.\n\nThe package AERN-Real-Double makes it possible to use ordinary\nmachine 'Double' values as endpoints, although limited to its fixed granularity (ie precision).\n\nA package AERN-Real-MPFR will be provided in future to facilitate (via package hmpfr)\nthe use of the MPFR arbitrary granularity (ie precision) floating point numbers\nas endpoints.\n\nThis package does not compile with ghc 7.0.* due to a\ncompiler bug that has been fixed for the 7.2.1 release.\nHaddock documentation can be found via <http://code.google.com/p/aern/wiki/Main>.";
        buildType = "Simple";
      };
      components = {
        AERN-Real-Interval = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.test-framework
            hsPkgs.test-framework-quickcheck2
            hsPkgs.deepseq
            hsPkgs.AERN-Basics
            hsPkgs.AERN-Real
          ];
        };
      };
    }