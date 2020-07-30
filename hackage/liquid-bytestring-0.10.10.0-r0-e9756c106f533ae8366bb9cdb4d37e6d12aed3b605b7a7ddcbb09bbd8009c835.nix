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
      identifier = { name = "liquid-bytestring"; version = "0.10.10.0"; };
      license = "BSD-3-Clause";
      copyright = "2010-19 Ranjit Jhala & Niki Vazou & Eric L. Seidel, University of California, San Diego.";
      maintainer = "Ranjit Jhala <jhala@cs.ucsd.edu>";
      author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
      homepage = "https://github.com/ucsd-progsys/liquidhaskell";
      url = "";
      synopsis = "LiquidHaskell specs for the bytestring package";
      description = "LiquidHaskell specs for the bytestring package.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.liquidhaskell or (pkgs.buildPackages.liquidhaskell or (errorHandler.buildToolDepError "liquidhaskell")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."liquid-base" or (errorHandler.buildDepError "liquid-base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
          ];
        buildable = true;
        };
      };
    }