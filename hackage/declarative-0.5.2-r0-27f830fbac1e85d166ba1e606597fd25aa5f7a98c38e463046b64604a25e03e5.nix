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
      identifier = { name = "declarative"; version = "0.5.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "jared@jtobin.ca";
      author = "Jared Tobin";
      homepage = "http://github.com/jtobin/declarative";
      url = "";
      synopsis = "DIY Markov Chains.";
      description = "This package presents a simple combinator language for Markov transition\noperators that are useful in MCMC.\n\nAny transition operators sharing the same stationary distribution and obeying\nthe Markov and reversibility properties can be combined in a couple of ways,\nsuch that the resulting operator preserves the stationary distribution and\ndesirable properties amenable for MCMC.\n\nWe can deterministically concatenate operators end-to-end, or sample from\na collection of them according to some probability distribution.  See\n<http://www.stat.umn.edu/geyer/f05/8931/n1998.pdf Geyer, 2005> for details.\n\nA useful strategy is to hedge one's 'sampling risk' by occasionally\ninterleaving a computationally-expensive transition (such as a gradient-based\nalgorithm like Hamiltonian Monte Carlo or NUTS) with cheap Metropolis\ntransitions.\n\n> transition = frequency [\n>     (9, metropolis 1.0)\n>   , (1, hamiltonian 0.05 20)\n>   ]\n\nAlternatively: sample consecutively using the same algorithm, but over a\nrange of different proposal distributions.\n\n> transition = concatAllT [\n>     slice 0.5\n>   , slice 1.0\n>   , slice 2.0\n>   ]\n\nOr just mix and match and see what happens!\n\n> transition =\n>   sampleT\n>     (sampleT (metropolis 0.5) (slice 0.1))\n>     (sampleT (hamiltonian 0.01 20) (metropolis 2.0))\n\nCheck the test suite for example usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."mcmc-types" or (errorHandler.buildDepError "mcmc-types"))
          (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
          (hsPkgs."mighty-metropolis" or (errorHandler.buildDepError "mighty-metropolis"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."hasty-hamiltonian" or (errorHandler.buildDepError "hasty-hamiltonian"))
          (hsPkgs."speedy-slice" or (errorHandler.buildDepError "speedy-slice"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "rosenbrock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
            (hsPkgs."declarative" or (errorHandler.buildDepError "declarative"))
            ];
          buildable = true;
          };
        };
      };
    }