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
      identifier = { name = "hmm-lapack"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/hmm-lapack";
      url = "";
      synopsis = "Hidden Markov Models using LAPACK primitives";
      description = "Hidden Markov Models implemented using LAPACK data types and operations.\n<http://en.wikipedia.org/wiki/Hidden_Markov_Model>\n\nIt implements:\n\n* generation of samples of emission sequences,\n\n* computation of the likelihood of an observed sequence of emissions,\n\n* construction of most likely state sequence\nthat produces an observed sequence of emissions,\n\n* supervised and unsupervised training of the model by Baum-Welch algorithm.\n\nIt supports any kind of emission distribution,\nwhere discrete and multivariate Gaussian distributions\nare implemented as examples.\n\nFor an introduction please refer to the examples:\n\n* \"Math.HiddenMarkovModel.Example.TrafficLight\"\n\n* \"Math.HiddenMarkovModel.Example.SineWave\"\n\n* \"Math.HiddenMarkovModel.Example.Circle\"\n\nAn alternative package without foreign calls is @hmm@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."lapack" or (errorHandler.buildDepError "lapack"))
          (hsPkgs."fixed-length" or (errorHandler.buildDepError "fixed-length"))
          (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
          (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
          (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
          (hsPkgs."lazy-csv" or (errorHandler.buildDepError "lazy-csv"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."prelude-compat" or (errorHandler.buildDepError "prelude-compat"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "hmm-test" = {
          depends = [
            (hsPkgs."hmm-lapack" or (errorHandler.buildDepError "hmm-lapack"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }