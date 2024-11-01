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
      specVersion = "1.18";
      identifier = { name = "hypergeometric"; version = "0.1.5.1"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright: (c) 2022 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Hypergeometric functions";
      description = "Haskell implementation of hypergeometric functions and associated statistical and special functions: erf, normal cdf, incomplete beta, regularized beta, F-distribution cdf, \\(\\chi^2\\)-distribution cdf, t-distrubtion cdf.\nAlso includes Lanczos' approximation of the gamma function.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }