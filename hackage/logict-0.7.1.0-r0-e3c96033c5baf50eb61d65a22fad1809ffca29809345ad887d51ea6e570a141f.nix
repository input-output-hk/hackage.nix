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
      identifier = { name = "logict"; version = "0.7.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2014 Dan Doel,\n(c) 2011-2013 Edward Kmett,\n(c) 2014      Roman Cheplyaka,\n(c) 2020-2021 Andrew Lelechenko,\n(c) 2020-2021 Kevin Quick";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Dan Doel";
      homepage = "https://github.com/Bodigrim/logict#readme";
      url = "";
      synopsis = "A backtracking logic-programming monad.";
      description = "Adapted from the paper\n<http://okmij.org/ftp/papers/LogicT.pdf Backtracking, Interleaving, and Terminating Monad Transformers>\nby Oleg Kiselyov, Chung-chieh Shan, Daniel P. Friedman, Amr Sabry.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "8.0") [
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "grandparents" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            ];
          buildable = false;
          };
        };
      tests = {
        "logict-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }