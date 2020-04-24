{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hmm-lapack"; version = "0.3.0.2"; };
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
          (hsPkgs."lapack" or ((hsPkgs.pkgs-errors).buildDepError "lapack"))
          (hsPkgs."fixed-length" or ((hsPkgs.pkgs-errors).buildDepError "fixed-length"))
          (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
          (hsPkgs."netlib-ffi" or ((hsPkgs.pkgs-errors).buildDepError "netlib-ffi"))
          (hsPkgs."comfort-array" or ((hsPkgs.pkgs-errors).buildDepError "comfort-array"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."boxes" or ((hsPkgs.pkgs-errors).buildDepError "boxes"))
          (hsPkgs."lazy-csv" or ((hsPkgs.pkgs-errors).buildDepError "lazy-csv"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."prelude-compat" or ((hsPkgs.pkgs-errors).buildDepError "prelude-compat"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "hmm-test" = {
          depends = [
            (hsPkgs."hmm-lapack" or ((hsPkgs.pkgs-errors).buildDepError "hmm-lapack"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }