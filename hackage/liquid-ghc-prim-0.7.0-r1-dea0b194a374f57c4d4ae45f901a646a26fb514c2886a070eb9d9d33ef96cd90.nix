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
      identifier = { name = "liquid-ghc-prim"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "2010-19 Ranjit Jhala & Niki Vazou & Eric L. Seidel, University of California, San Diego.";
      maintainer = "Ranjit Jhala <jhala@cs.ucsd.edu>";
      author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
      homepage = "https://github.com/ucsd-progsys/liquidhaskell";
      url = "";
      synopsis = "Drop-in ghc-prim replacement for LH";
      description = "Superseded by liquidhaskell >= 0.9.2";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.liquidhaskell or (pkgs.pkgsBuildBuild.liquidhaskell or (errorHandler.setupDepError "liquidhaskell")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
        ];
        buildable = true;
      };
    };
  }