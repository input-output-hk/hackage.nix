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
    flags = { vec128 = false; vec256 = false; vec512 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "neural-network-blashs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jiasenwu@hotmail.com";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/neural-network";
      url = "";
      synopsis = "Yet Another High Performance and Extendable Neural Network in Haskell";
      description = "Provides execution backend of neural network on top of blas-hs.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blas-hs" or (errorHandler.buildDepError "blas-hs"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."neural-network-base" or (errorHandler.buildDepError "neural-network-base"))
          ];
        buildable = true;
        };
      tests = {
        "s1" = {
          depends = [
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."blas-hs" or (errorHandler.buildDepError "blas-hs"))
            (hsPkgs."neural-network-base" or (errorHandler.buildDepError "neural-network-base"))
            ];
          buildable = true;
          };
        };
      };
    }