let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "AERN-Real-Double"; version = "2011.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ieee-utils" or (buildDepError "ieee-utils"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."test-framework" or (buildDepError "test-framework"))
          (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
          (hsPkgs."AERN-Basics" or (buildDepError "AERN-Basics"))
          (hsPkgs."AERN-Real-Interval" or (buildDepError "AERN-Real-Interval"))
          (hsPkgs."AERN-Real" or (buildDepError "AERN-Real"))
          ];
        buildable = true;
        };
      exes = {
        "testAERN-Real-Double" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."AERN-Basics" or (buildDepError "AERN-Basics"))
            (hsPkgs."AERN-Real-Interval" or (buildDepError "AERN-Real-Interval"))
            (hsPkgs."AERN-Real" or (buildDepError "AERN-Real"))
            ];
          buildable = true;
          };
        "benchAERN-Real-Double" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."AERN-Basics" or (buildDepError "AERN-Basics"))
            (hsPkgs."AERN-Real-Interval" or (buildDepError "AERN-Real-Interval"))
            (hsPkgs."AERN-Real" or (buildDepError "AERN-Real"))
            ];
          buildable = true;
          };
        "demoAERN-Real-Double-Quadratic" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."AERN-Basics" or (buildDepError "AERN-Basics"))
            (hsPkgs."AERN-Real" or (buildDepError "AERN-Real"))
            ];
          buildable = true;
          };
        "demoAERN-Real-Double-Riemann" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."AERN-Basics" or (buildDepError "AERN-Basics"))
            (hsPkgs."AERN-Real" or (buildDepError "AERN-Real"))
            ];
          buildable = true;
          };
        "demoAERN-Real-Double-Zero" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."AERN-Basics" or (buildDepError "AERN-Basics"))
            (hsPkgs."AERN-Real" or (buildDepError "AERN-Real"))
            ];
          buildable = true;
          };
        };
      };
    }