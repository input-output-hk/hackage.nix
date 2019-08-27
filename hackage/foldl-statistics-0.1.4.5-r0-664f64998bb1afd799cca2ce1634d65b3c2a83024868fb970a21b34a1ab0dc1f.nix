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
      specVersion = "1.10";
      identifier = { name = "foldl-statistics"; version = "0.1.4.5"; };
      license = "BSD-3-Clause";
      copyright = "2016 Data61 (CSIRO)";
      maintainer = "Alex.Mason@data61.csiro.au";
      author = "Alex Mason";
      homepage = "http://github.com/Data61/foldl-statistics#readme";
      url = "";
      synopsis = "Statistical functions from the statistics package implemented as\nFolds.";
      description = "The use of this package allows statistics to be computed using at most two\npasses over the input data, one to compute a mean and one to compute a further\nstatistic such as variance and /n/th central moments. All algorithms are the\nobvious implementation of Bryan O\\'Sullivan\\'s\n<https://hackage.haskell.org/package/statistics statistics> package imeplemented\nas `Fold's from the\n<https://hackage.haskell.org/package/foldl foldl> package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."math-functions" or (buildDepError "math-functions"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
        };
      tests = {
        "foldl-statistics-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."foldl-statistics" or (buildDepError "foldl-statistics"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          };
        };
      benchmarks = {
        "bench-folds" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."foldl-statistics" or (buildDepError "foldl-statistics"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          };
        };
      };
    }