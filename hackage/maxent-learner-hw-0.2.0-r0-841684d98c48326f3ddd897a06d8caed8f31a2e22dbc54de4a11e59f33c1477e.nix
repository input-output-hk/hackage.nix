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
      identifier = { name = "maxent-learner-hw"; version = "0.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "2016-2017 George Steel and Peter Jurgec";
      maintainer = "george.steel@gmail.com";
      author = "George Steel";
      homepage = "https://github.com/george-steel/maxent-learner";
      url = "";
      synopsis = "Hayes and Wilson's maxent learning algorithm for phonotactic grammars.";
      description = "Provides an implementation of Hayes and Wilson's machine learning algorithm for maxent phonotactic grammars, as both a command-line tool and a function library.  The learner takes in a lexicon and produces a list of weighted constraints penalizing certain sound sequemces in an attempt to produce a probability distribution of words which maximizes the probability of the lexicon. Once such a set of constraints is generated, it can be tested by using it to generate random pronounceable text.\n\nThis package is an implementation of the algorithm described in Hayes and Wilson's paper /A Maximum Entropy Model of Phonotactics and Phonotactic Learning/ (available at <http://www.linguistics.ucla.edu/people/hayes/Phonotactics/Index.htm>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."readcsv" or (errorHandler.buildDepError "readcsv"))
        ];
        buildable = true;
      };
      exes = {
        "phono-learner-hw" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."maxent-learner-hw" or (errorHandler.buildDepError "maxent-learner-hw"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          ];
          buildable = true;
        };
      };
    };
  }