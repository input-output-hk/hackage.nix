{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "AERN-Real-Double";
        version = "2011.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Michal Konecny, Jan Duracz";
      maintainer = "mikkonecny@gmail.com";
      author = "Michal Konecny (Aston University)";
      homepage = "http://code.google.com/p/aern/";
      url = "";
      synopsis = "arbitrary precision real interval arithmetic";
      description = "This package provides bindings and tests for using machine Double\nvalues as endpoints for the interval arithmetic defined in packages AERN-Basics and\nAERN-Real.\n\nMost users of this package will only need to import one end-user API module.\nThere is a choice of three such modules, each providing a different\nlevel of abstraction for the type of intervals with Double endpoints:\n\n* \"Numeric.AERN.DoubleBasis.RealApprox\" gives RealApprox - an abstract data type\nlimited to operations that interpret each interval strictly as an\napproximation to a single real number.  As an instance of Fractional,\nthe numerical operations safely overapproximate\nthe exact real operations by rounding the intervals outwards.\n\n* \"Numeric.AERN.DoubleBasis.RealIntervalApprox\" gives RealIntervalApprox - an abstract\ndata type limited to operations that interpret each interval strictly as an\napproximation to a /set/ of real numbers.  All RealApprox operations are\navailable also for RealIntervalApprox.  Additionally, one can create approximations that\ncertainly cover two given approximations and one can perform all\noperations rounding /inwards/ to allow safe semi-deciding of set inclusions.\nAs a consequence of inner rounding, anti-consistent intervals such as [1,0] may arise\nand are treated using Kaucher arithmetic.\n\n* \"Numeric.AERN.DoubleBasis.Interval\" gives full access to the interval type,\nincluding the Double endpoints.\n\nThe accompanying modules \"Numeric.AERN.DoubleBasis.MRealApprox\", \"Numeric.AERN.DoubleBasis.MRealIntervalApprox\"\nand \"Numeric.AERN.DoubleBasis.MInterval\" add in-place versions of most of the pure operations\nprovided by the respective above module.\n\nFor further information, please refer to the documentation of these six modules\nand the sample programs in the demo folder.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ieee-utils)
          (hsPkgs.QuickCheck)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.AERN-Basics)
          (hsPkgs.AERN-Real-Interval)
          (hsPkgs.AERN-Real)
        ];
      };
      exes = {
        "testAERN-Real-Double" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.AERN-Basics)
            (hsPkgs.AERN-Real-Interval)
            (hsPkgs.AERN-Real)
          ];
        };
        "benchAERN-Real-Double" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.AERN-Basics)
            (hsPkgs.AERN-Real-Interval)
            (hsPkgs.AERN-Real)
          ];
        };
        "demoAERN-Real-Double-Quadratic" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.AERN-Basics)
            (hsPkgs.AERN-Real)
          ];
        };
        "demoAERN-Real-Double-Riemann" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.AERN-Basics)
            (hsPkgs.AERN-Real)
          ];
        };
        "demoAERN-Real-Double-Zero" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.AERN-Basics)
            (hsPkgs.AERN-Real)
          ];
        };
      };
    };
  }