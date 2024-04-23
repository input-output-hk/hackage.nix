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
      identifier = { name = "mcmc-types"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/mcmc-types";
      url = "";
      synopsis = "Common types for sampling.";
      description = "Common types for implementing Markov Chain Monte Carlo (MCMC) algorithms.\n\nAn instance of an MCMC problem can be characterized by the following:\n\n* A /target distribution/ over some parameter space\n\n* A /parameter space/ for a Markov chain to wander over\n\n* A /transition operator/ to drive the Markov chain\n\n/mcmc-types/ provides the suitably-general 'Target', 'Chain', and\n'Transition' types for representing these things respectively.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }