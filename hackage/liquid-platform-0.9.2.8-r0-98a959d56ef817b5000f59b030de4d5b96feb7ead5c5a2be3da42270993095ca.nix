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
      identifier = { name = "liquid-platform"; version = "0.9.2.8"; };
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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."liquid-prelude" or (errorHandler.buildDepError "liquid-prelude"))
            (hsPkgs."liquid-vector" or (errorHandler.buildDepError "liquid-vector"))
            (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
            (hsPkgs."liquidhaskell-boot" or (errorHandler.buildDepError "liquidhaskell-boot"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "8.10.1"
            then false
            else true;
        };
      };
    };
  }