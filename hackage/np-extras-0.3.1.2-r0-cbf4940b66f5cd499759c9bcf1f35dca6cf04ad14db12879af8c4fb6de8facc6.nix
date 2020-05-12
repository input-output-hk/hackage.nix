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
      identifier = { name = "np-extras"; version = "0.3.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brent Yorgey <byorgey@gmail.com>";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "NumericPrelude extras";
      description = "Various extras to extend the NumericPrelude, including\nmultivariate polynomials and factored rationals.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }