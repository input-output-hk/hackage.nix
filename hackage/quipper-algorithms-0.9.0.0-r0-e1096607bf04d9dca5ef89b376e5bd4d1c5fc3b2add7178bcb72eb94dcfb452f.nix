{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.superdoc or (pkgs.buildPackages.superdoc or ((hsPkgs.pkgs-errors).buildToolDepError "superdoc")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.quipper-cabal or (pkgs.buildPackages.quipper-cabal or ((hsPkgs.pkgs-errors).buildToolDepError "quipper-cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."newsynth" or ((hsPkgs.pkgs-errors).buildDepError "newsynth"))
          (hsPkgs."easyrender" or ((hsPkgs.pkgs-errors).buildDepError "easyrender"))
          (hsPkgs."Lattices" or ((hsPkgs.pkgs-errors).buildDepError "Lattices"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."primes" or ((hsPkgs.pkgs-errors).buildDepError "primes"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."quipper-utils" or ((hsPkgs.pkgs-errors).buildDepError "quipper-utils"))
          (hsPkgs."quipper-language" or ((hsPkgs.pkgs-errors).buildDepError "quipper-language"))
          (hsPkgs."quipper-libraries" or ((hsPkgs.pkgs-errors).buildDepError "quipper-libraries"))
          ];
        buildable = true;
        };
      exes = {
        "bf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quipper-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "bwt" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quipper-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "cl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quipper-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "gse" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quipper-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "qls" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quipper-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "tf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quipper-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        "usv" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quipper-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "quipper-algorithms"))
            ];
          buildable = true;
          };
        };
      };
    }