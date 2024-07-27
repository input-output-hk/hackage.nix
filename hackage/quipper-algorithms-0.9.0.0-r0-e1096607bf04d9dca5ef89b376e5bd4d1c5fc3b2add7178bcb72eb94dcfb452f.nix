{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.superdoc or (pkgs.pkgsBuildBuild.superdoc or (errorHandler.setupDepError "superdoc")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.quipper-cabal or (pkgs.pkgsBuildBuild.quipper-cabal or (errorHandler.setupDepError "quipper-cabal")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."newsynth" or (errorHandler.buildDepError "newsynth"))
          (hsPkgs."easyrender" or (errorHandler.buildDepError "easyrender"))
          (hsPkgs."Lattices" or (errorHandler.buildDepError "Lattices"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
          (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
          (hsPkgs."quipper-libraries" or (errorHandler.buildDepError "quipper-libraries"))
        ];
        buildable = true;
      };
      exes = {
        "bf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (errorHandler.buildDepError "quipper-algorithms"))
          ];
          buildable = true;
        };
        "bwt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (errorHandler.buildDepError "quipper-algorithms"))
          ];
          buildable = true;
        };
        "cl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (errorHandler.buildDepError "quipper-algorithms"))
          ];
          buildable = true;
        };
        "gse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (errorHandler.buildDepError "quipper-algorithms"))
          ];
          buildable = true;
        };
        "qls" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (errorHandler.buildDepError "quipper-algorithms"))
          ];
          buildable = true;
        };
        "tf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (errorHandler.buildDepError "quipper-algorithms"))
          ];
          buildable = true;
        };
        "usv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quipper-algorithms" or (errorHandler.buildDepError "quipper-algorithms"))
          ];
          buildable = true;
        };
      };
    };
  }