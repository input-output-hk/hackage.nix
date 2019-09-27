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
    flags = { pl3 = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hirt"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan@hirt.ksp.sk";
      author = "Ivan Labáth";
      homepage = "https://people.ksp.sk/~ivan/hirt";
      url = "";
      synopsis = "Calculates IRT 2PL and 3PL models";
      description = "Program for fitting Item Response Theory (IRT) two (2PL) and\nthree (3PL) parameter logistic models.\n\nImplements Joint Maximum Likelihood (JML) algorithm\n(currently only supported in 2PL model) and via\ngeneric function optimization using L-BFGS-B (both 2PL and 3PL).\n\nCalculates item parameter and subject ability estimates and\nlog likelihood statistics. For contestant abilities supports\nerror estimates via Fisher information, and via two algorithms\nof the author, namely bootstrap and Bayes a posteriori probability.\n\nSupports outputting coordinate list for a plot of Bayes\na posteriori probability of individual subject abilities.\n\nPart of a masters thesis of the author \"http://people.ksp.sk/~ivan/irt/ebook.pdf\" .\n\nAs a side note, it is currently a lacking proper documentation and user friendliness.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hirt" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."text-format" or (buildDepError "text-format"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."numeric-extras" or (buildDepError "numeric-extras"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."hlbfgsb" or (buildDepError "hlbfgsb"))
            ];
          buildable = true;
          };
        };
      };
    }