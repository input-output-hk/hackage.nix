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
      identifier = { name = "aivika-transformers"; version = "5.7"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2018. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://www.aivikasoft.com";
      url = "";
      synopsis = "Transformers for the Aivika simulation library";
      description = "This package is a generalization of the aivika [1] simulation library\nwith extensive use of monad transformers and type families.\nIt can be applied for nested simulation [2] and parallel distributed simulation [3].\n\nUnlike sequential simulation, the distributed simulation is more difficult for implementing\nthe simulation experiments by the Monte-Carlo method. Therefore, there are additional packages\nthat allow saving the results of distributed simulation in SQL databases\nand only then the simulation reports are generated. These reports are HTML pages\nwith charts, histograms, links to CSV tables, statistics summary and so on.\n\nThis method can be used not only for the parallel distributed simulation, but also for other\nsimulation models created with help of the generalized version of the Aivika simulation library.\nPlease consult the AivikaSoft [4] website for more details.\n\n\\[1] <http://hackage.haskell.org/package/aivika>\n\n\\[2] <http://hackage.haskell.org/package/aivika-branches>\n\n\\[3] <http://hackage.haskell.org/package/aivika-distributed>\n\n\\[4] <http://www.aivikasoft.com>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."aivika" or (errorHandler.buildDepError "aivika"))
        ];
        buildable = true;
      };
    };
  }