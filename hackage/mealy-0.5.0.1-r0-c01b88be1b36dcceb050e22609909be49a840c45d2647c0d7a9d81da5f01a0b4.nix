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
      identifier = { name = "mealy"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2013";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/mealy#readme";
      url = "";
      synopsis = "Mealy machines for processing time-series and ordered data.";
      description = "@mealy@ reimagines statistics as a [mealy machine](https://en.wikipedia.org/wiki/Mealy_machine) processing data with some form of order such as time-series data. The 'Mealy', with the help of a decay function specifying the relative weights of recent values versus older value, can be treated as a compression or summary of the data stream into 'current state.'\nMealies are highly polymorphic, situated at a busy crossroad of theory and practice, and lend themselves to ergonmic, compact and realistic representations of a wide range of online phenomena.\n\n== Usage\n\n>>> import Mealy\n\n>>> fold ((,) <$> ma 0.9 <*> std 0.9) [1..100]\n(91.00265621044142,9.472822805289121)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."harpie" or (errorHandler.buildDepError "harpie"))
          (hsPkgs."harpie-numhask" or (errorHandler.buildDepError "harpie-numhask"))
          (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."tdigest" or (errorHandler.buildDepError "tdigest"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
        ];
        buildable = true;
      };
      exes = {
        "mealy-perf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."formatn" or (errorHandler.buildDepError "formatn"))
            (hsPkgs."harpie" or (errorHandler.buildDepError "harpie"))
            (hsPkgs."harpie-numhask" or (errorHandler.buildDepError "harpie-numhask"))
            (hsPkgs."mealy" or (errorHandler.buildDepError "mealy"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."perf" or (errorHandler.buildDepError "perf"))
            (hsPkgs."tdigest" or (errorHandler.buildDepError "tdigest"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
            (hsPkgs."mealy" or (errorHandler.buildDepError "mealy"))
          ];
          buildable = true;
        };
      };
    };
  }