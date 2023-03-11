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
      specVersion = "1.24";
      identifier = { name = "liquid-vector"; version = "0.12.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2010-19 Ranjit Jhala & Niki Vazou & Eric L. Seidel, University of California, San Diego.";
      maintainer = "Ranjit Jhala <jhala@cs.ucsd.edu>";
      author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
      homepage = "https://github.com/ucsd-progsys/liquidhaskell";
      url = "";
      synopsis = "LiquidHaskell specs for the vector package";
      description = "LiquidHaskell specs for the vector package.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.liquidhaskell or (pkgs.buildPackages.liquidhaskell or (errorHandler.setupDepError "liquidhaskell")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."liquid-base" or (errorHandler.buildDepError "liquid-base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
          ];
        buildable = true;
        };
      };
    }