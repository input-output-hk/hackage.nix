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
      specVersion = "3.0";
      identifier = { name = "mealy"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2013 - 2022";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/mealy#readme";
      url = "";
      synopsis = "Mealy machines for processing time-series and ordered data.";
      description = "@mealy@ provides support for computing statistics (such as an average or a standard deviation)\nas current state. Usage is to supply a decay function representing the relative weights of recent values versus older ones, in the manner of exponentially-weighted averages. The library attempts to be polymorphic in the statistic which can be combined in applicative style.\n\n== Usage\n\n>>> import Mealy\n\n>>> fold ((,) <$> ma 0.9 <*> std 0.9) [1..100]\n(91.00265621044142,9.472822805289121)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."numhask-array" or (errorHandler.buildDepError "numhask-array"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."tdigest" or (errorHandler.buildDepError "tdigest"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
        buildable = true;
        };
      };
    }