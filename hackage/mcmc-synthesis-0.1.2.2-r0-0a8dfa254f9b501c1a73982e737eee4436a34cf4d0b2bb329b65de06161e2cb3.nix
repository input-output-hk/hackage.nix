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
      specVersion = "1.8";
      identifier = { name = "mcmc-synthesis"; version = "0.1.2.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Jessica Taylor <jessica.liu.taylor@gmail.com>";
      author = "Jessica Taylor <jessica.liu.taylor@gmail.com>, Tikhon Jelvis <tikhon@jelv.is>";
      homepage = "";
      url = "";
      synopsis = "MCMC applied to probabilistic program synthesis";
      description = "A simple implementation of the ideas from \"Stochastic Superoptimization\" which uses a variant of Markov Chain Monte Carlo (MCMC) to synthesize programs based on a set of test cases.\n\"Stochastic Superoptimization\": <http://cs.stanford.edu/people/eschkufz/research/asplos291-schkufza.pdf>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
        ];
        buildable = true;
      };
    };
  }