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
      specVersion = "1.8";
      identifier = { name = "AERN-Real-Interval"; version = "2011.1.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."test-framework" or (buildDepError "test-framework"))
          (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."AERN-Basics" or (buildDepError "AERN-Basics"))
          (hsPkgs."AERN-Real" or (buildDepError "AERN-Real"))
          ];
        buildable = true;
        };
      };
    }