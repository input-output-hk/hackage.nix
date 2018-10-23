{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "maxent-learner-hw";
        version = "0.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "2016 George Steel and Peter Jurgec";
      maintainer = "george.steel@gmail.com";
      author = "George Steel";
      homepage = "https://github.com/george-steel/maxent-learner";
      url = "";
      synopsis = "Hayes and Wilson's maxent learning algorithm for phonotactic grammars.";
      description = "Provides an implementation of Hayes and Wilson's machine learning algorithm for maxent phonotactic grammars, as both a command-line tool and a function library.  The learner takes in a lexicon and produces a list of weighted constraints penalizing certain sound sequemces in an attempt to produce a probability distribution of words which maximizes the probability of the lexicon. Once such a set of constraints is generated, it can be tested by using it to generate random pronounceable text.\n\nThis package is an implementation of the algorithm described in Hayes and Wilson's paper /A Maximum Entropy Model of Phonotactics and Phonotactic Learning/ (available at <http://www.linguistics.ucla.edu/people/hayes/Phonotactics/Index.htm>).";
      buildType = "Simple";
    };
    components = {
      "maxent-learner-hw" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.array)
          (hsPkgs.text)
          (hsPkgs.csv)
        ];
      };
      exes = {
        "phono-learner-hw" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.maxent-learner-hw)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.file-embed)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
            (hsPkgs.array)
            (hsPkgs.mtl)
            (hsPkgs.random)
          ];
        };
      };
    };
  }