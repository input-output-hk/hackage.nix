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
      identifier = { name = "quipper-libraries"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2019. All rights reserved.";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Alexander S. Green, Peter LeFanu Lumsdaine,\nNeil J. Ross, Peter Selinger, Benoît Valiron";
      homepage = "http://www.mathstat.dal.ca/~selinger/quipper/";
      url = "";
      synopsis = "The standard libraries for Quipper.";
      description = "This package provides the standard libraries for Quipper, the\nembedded functional programming language for quantum computing.\nThis includes libraries for quantum integer and fixed-point\narithmetic, decomposition into standard gate sets, the quantum\nFourier transform, simulation, among other things.";
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
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."newsynth" or (errorHandler.buildDepError "newsynth"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
          (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
        ];
        buildable = true;
      };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."newsynth" or (errorHandler.buildDepError "newsynth"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quipper-utils" or (errorHandler.buildDepError "quipper-utils"))
            (hsPkgs."quipper-language" or (errorHandler.buildDepError "quipper-language"))
          ];
          buildable = true;
        };
      };
    };
  }