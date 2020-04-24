{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "maxent-learner-hw"; version = "0.2.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."readcsv" or ((hsPkgs.pkgs-errors).buildDepError "readcsv"))
          ];
        buildable = true;
        };
      exes = {
        "phono-learner-hw" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."maxent-learner-hw" or ((hsPkgs.pkgs-errors).buildDepError "maxent-learner-hw"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            ];
          buildable = true;
          };
        };
      };
    }