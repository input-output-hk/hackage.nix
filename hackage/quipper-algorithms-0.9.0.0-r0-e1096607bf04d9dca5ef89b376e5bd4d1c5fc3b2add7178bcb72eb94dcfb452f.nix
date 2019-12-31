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
      identifier = { name = "quipper-algorithms"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2019. All rights reserved.";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Alexander S. Green, Keith Kim, Peter LeFanu Lumsdaine,\nSiun-Chuon Mau, Neil J. Ross, Artur Scherer,\nPeter Selinger, Benoît Valiron, Alexandr Virodov";
      homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
      url = "";
      synopsis = "A set of algorithms implemented in Quipper.";
      description = "This package provides seven algorithms that have been implemented in\nQuipper. They are:\nBF - Boolean formula algorithm,\nBWT - Binary welded tree algorithm,\nCL - Class number algorithm,\nGSE - Ground state estimation algorithm,\nQLS - Quantum linear systems algorithm,\nTF - Triangle finding algorithm,\nUSV - Unique shortest vector algorithm.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.superdoc or (pkgs.buildPackages.superdoc or (buildToolDepError "superdoc")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.quipper-cabal or (pkgs.buildPackages.quipper-cabal or (buildToolDepError "quipper-cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."newsynth" or (buildDepError "newsynth"))
          (hsPkgs."easyrender" or (buildDepError "easyrender"))
          (hsPkgs."Lattices" or (buildDepError "Lattices"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."primes" or (buildDepError "primes"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."quipper-utils" or (buildDepError "quipper-utils"))
          (hsPkgs."quipper-language" or (buildDepError "quipper-language"))
          (hsPkgs."quipper-libraries" or (buildDepError "quipper-libraries"))
          ];
        buildable = true;
        };
      exes = {
        "bf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "bwt" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "cl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "gse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "qls" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "tf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "usv" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        };
      };
    }