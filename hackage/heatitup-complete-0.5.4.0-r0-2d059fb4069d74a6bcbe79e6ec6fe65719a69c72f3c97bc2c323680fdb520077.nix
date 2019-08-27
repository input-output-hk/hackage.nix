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
      identifier = { name = "heatitup-complete"; version = "0.5.4.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2019 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/heatitup-complete#readme";
      url = "";
      synopsis = "Find and annotate ITDs with assembly or read pair joining.";
      description = "Find and annotate ITDs with assembly or read pair joining using suffix trees and characterize the exogenous segments within the spacer using heat diffusion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."fasta" or (buildDepError "fasta"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-show" or (buildDepError "text-show"))
          (hsPkgs."turtle" or (buildDepError "turtle"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "heatitup-complete" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."heatitup-complete" or (buildDepError "heatitup-complete"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."fasta" or (buildDepError "fasta"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-text" or (buildDepError "pipes-text"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }