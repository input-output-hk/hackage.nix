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
    flags = { devel = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "liquid-platform"; version = "0.8.10.1"; };
      license = "BSD-3-Clause";
      copyright = "2010-19 Ranjit Jhala & Niki Vazou & Eric L. Seidel, University of California, San Diego.";
      maintainer = "Ranjit Jhala <jhala@cs.ucsd.edu>";
      author = "Ranjit Jhala, Niki Vazou, Eric Seidel";
      homepage = "https://github.com/ucsd-progsys/liquidhaskell";
      url = "";
      synopsis = "A battery-included platform for LiquidHaskell";
      description = "A battery-included platform for LiquidHaskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "liquidhaskell" = {
          depends = pkgs.lib.optionals (!(compiler.isGhc && compiler.version.lt "8.10.1")) [
            (hsPkgs."liquid-base" or (errorHandler.buildDepError "liquid-base"))
            (hsPkgs."liquid-containers" or (errorHandler.buildDepError "liquid-containers"))
            (hsPkgs."liquid-prelude" or (errorHandler.buildDepError "liquid-prelude"))
            (hsPkgs."liquid-vector" or (errorHandler.buildDepError "liquid-vector"))
            (hsPkgs."liquid-bytestring" or (errorHandler.buildDepError "liquid-bytestring"))
            (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "8.10.1"
            then false
            else true;
        };
        "gradual" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
            (hsPkgs."liquid-fixpoint" or (errorHandler.buildDepError "liquid-fixpoint"))
            (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
          ];
          buildable = false;
        };
        "target" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
          ];
          buildable = false;
        };
      };
    };
  }