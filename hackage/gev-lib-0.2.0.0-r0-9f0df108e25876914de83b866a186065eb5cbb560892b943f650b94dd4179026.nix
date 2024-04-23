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
      specVersion = "2.4";
      identifier = { name = "gev-lib"; version = "0.2.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "haeckgabriel@gmail.com";
      author = "Gabriel Haeck";
      homepage = "https://github.com/HaeckGabriel/gev-lib-Haskell";
      url = "";
      synopsis = "The family of Extreme Value Distributions.";
      description = "Basic Distributional quantities (CDF, PDF, Quantile) for the Gumbel, Féchet, Weibull and GEV Distributions.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "gev-dist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."gev-lib".components.sublibs.gev-dist or (errorHandler.buildDepError "gev-lib:gev-dist"))
          ];
          buildable = true;
        };
      };
    };
  }