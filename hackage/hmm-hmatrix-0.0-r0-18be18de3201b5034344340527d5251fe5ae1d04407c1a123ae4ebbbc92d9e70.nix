{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hmm-hmatrix";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://code.haskell.org/~thielema/hmm-hmatrix";
      url = "";
      synopsis = "Hidden Markov Models using HMatrix primitives";
      description = "Hidden Markov Models implemented using HMatrix data types and operations.\n<http://en.wikipedia.org/wiki/Hidden_Markov_Model>\n\nIt implements:\n\n* generation of samples of emission sequences,\n\n* computation of the likelihood of an observed sequence of emissions,\n\n* construction of most likely state sequence\nthat produces an observed sequence of emissions,\n\n* supervised and unsupervised training of the model by Baum-Welch algorithm.\n\nIt supports any kind of emission distribution,\nwhere discrete and multivariate Gaussian distributions\nare implemented as examples.\n\nFor an introduction please refer to the examples:\n\n* \"Math.HiddenMarkovModel.Example.TrafficLight\"\n\n* \"Math.HiddenMarkovModel.Example.SineWave\"\n\n* \"Math.HiddenMarkovModel.Example.Circle\"\n\nAn alternative package without foreign calls is @hmm@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.hmatrix)
          (hsPkgs.explicit-exception)
          (hsPkgs.lazy-csv)
          (hsPkgs.random)
          (hsPkgs.transformers)
          (hsPkgs.non-empty)
          (hsPkgs.semigroups)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
      };
    };
  }