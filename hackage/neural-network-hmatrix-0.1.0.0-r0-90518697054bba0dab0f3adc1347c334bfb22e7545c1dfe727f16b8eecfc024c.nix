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
      specVersion = "1.10";
      identifier = { name = "neural-network-hmatrix"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "";
      url = "";
      synopsis = "Yet Another High Performance and Extendable Neural Network in Haskell";
      description = "Provides execution backend of neural network on top of hmatrix.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."hmatrix-gsl" or (errorHandler.buildDepError "hmatrix-gsl"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."neural-network-base" or (errorHandler.buildDepError "neural-network-base"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."openblas" or (errorHandler.sysDepError "openblas")) ++ (pkgs.lib).optional (system.isLinux) (pkgs."blas" or (errorHandler.sysDepError "blas"));
        buildable = true;
        };
      };
    }