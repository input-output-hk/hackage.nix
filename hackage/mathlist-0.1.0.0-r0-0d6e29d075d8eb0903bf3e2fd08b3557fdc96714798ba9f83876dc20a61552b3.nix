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
      identifier = { name = "mathlist"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "djsamperi@gmail.com";
      author = "Dominick Samperi";
      homepage = "";
      url = "";
      synopsis = "Math using lists, including FFT and Wavelet";
      description = "This package contains standard one-dimensional mathematical transforms (FFT, Wavelet, etc.) applied to Haskell lists. Documentation including mathematical details and examples are included to facilitate use with small or moderate sized problems, and for educational purposes. The algorithms have a very consise representation in Haskell that is a direct translation of the mathematical formulations.\n\nSome of the examples use the HakellR package and the hybrid Haskell/R environment that it provides. This permits use of R statistical and grahics tools in a Haskell \"playgound\" that requires minimal configuration. HaskellR's Jupyter kernel for Haskell is an added bonus. The functions of this package do not depend on R or HaskellR.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }