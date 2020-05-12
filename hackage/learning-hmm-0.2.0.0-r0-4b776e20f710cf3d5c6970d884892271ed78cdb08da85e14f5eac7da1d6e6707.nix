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
      identifier = { name = "learning-hmm"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 Mitsuhiro Nakamura";
      maintainer = "Mitsuhiro Nakamura <m.nacamura@gmail.com>";
      author = "Mitsuhiro Nakamura";
      homepage = "https://github.com/mnacamura/learning-hmm";
      url = "";
      synopsis = "Yet another library for hidden Markov models";
      description = "This library provides functions for the maximum likelihood\nestimation of discrete hidden Markov models. At present,\nonly Baum-Welch and Viterbi algorithms are implemented.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }