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
      identifier = {
        name = "statistics-hypergeometric-genvar";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2015 Sam Rijs\n2005 Robert Kern\n1998 Ivan Frohne";
      maintainer = "Sam Rijs <srijs@airpost.net>";
      author = "Sam Rijs <srijs@airpost.net>";
      homepage = "https://github.com/srijs/statistics-hypergeometric-genvar";
      url = "";
      synopsis = "Random variate generation from hypergeometric distributions";
      description = "Supplements the @Statistics.Distribution.Hypergeometric@\nmodule from the excellent @statistics@ package.\n\nImplements the interfaces @ContGen@ and @DiscreteGen@ for\n@HypergeometricDistribution@. Provides it's own function\n@genVar@ generalised over @Integral@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
        ];
        buildable = true;
      };
    };
  }