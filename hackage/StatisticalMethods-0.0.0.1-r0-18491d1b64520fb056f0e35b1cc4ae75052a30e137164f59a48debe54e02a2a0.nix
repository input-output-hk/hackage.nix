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
      specVersion = "1.4.0";
      identifier = { name = "StatisticalMethods"; version = "0.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/Haskell/";
      url = "";
      synopsis = "Collection of useful statistical methods.";
      description = "High-level statistical methods.\n\n* Confusion matrix\n\n* Confusion matrix dependent statistics (sensitivity, specificity, F-measure, mcc)\n\n* EM algorithm for two-component Gaussian mixture.\n\n* GMM (Gaussian Mixture Models) with >=1 Gaussians fitted to the data.\n\n\n\nNote that some methods are for testing only (two-component\nGaussian mixture EM).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          ];
        buildable = true;
        };
      };
    }