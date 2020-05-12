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
      identifier = { name = "maxent"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/maxent";
      url = "";
      synopsis = "Compute Maximum Entropy Distributions";
      description = "The maximum entropy method, or MAXENT, is variational approach for computing probability\ndistributions given a list of moment, or expected value, constraints.\n\nHere are some links for background info.\n\nA good overview of applications:\n<http://cmm.cit.nih.gov/maxent/letsgo.html>\n\nOn the idea of maximum entropy in general:\n<http://en.wikipedia.org/wiki/Principle_of_maximum_entropy>\n\nUse this package to compute discrete maximum entropy distributions over a list of values and\nlist of constraints.\n\nHere is a the example from Probability the Logic of Science\n\n@\nmaxent ([1,2,3], [average 1.5])\n@\n\nRight [0.61, 0.26, 0.11]\n\nThe classic dice example\n\n@\nmaxent ([1,2,3,4,5,6], [average 4.5])\n@\n\nRight [.05, .07, 0.11, 0.16, 0.23, 0.34]\n\nOne can use different constraints besides the average value there.\n\nAs for why you want to maximize the entropy to find the probability constraint,\nI will say this for now. In the case of the average constraint\nit is a kin to choosing a integer partition with the most interger compositions.\nI doubt that makes any sense, but I will try to explain more with a blog post soon.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."nonlinear-optimization" or (errorHandler.buildDepError "nonlinear-optimization"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          ];
        buildable = true;
        };
      };
    }