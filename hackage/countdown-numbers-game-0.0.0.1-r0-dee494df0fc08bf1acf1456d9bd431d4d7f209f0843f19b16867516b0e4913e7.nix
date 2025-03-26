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
      identifier = { name = "countdown-numbers-game"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "https://hub.darcs.net/thielema/countdown-numbers-game";
      url = "";
      synopsis = "Solve problems from the number round of the Countdown game show";
      description = "Solver for the numbers round of the Countdown game show:\n\n* <https://en.wikipedia.org/wiki/Countdown_(game_show)>\n\n* <https://www.youtube.com/watch?v=pfa3MHLLSWI>\n\nThat is, given six numbers and a target number,\nfind an arithmetical expression containing exactly those six numbers\nthat yields the target number.\nThe solver however is neither limited to a certain number of operands\nnor to a certain magnitude of numbers\nnor to uniqueness of the operands.\nPlease note, that the solver also emits solutions\nwhere not all of the given operands are used.\n\nExample:\n\n> $ countdown-numbers-solve 23 42 3 4 5 --result 777\n> (23*3+5)*42/4\n\nThe solver employs a brute-force search,\nbut ensures that expressions are unique up to commutativity and associativity.\nIt determines all solutions of a problem within seconds.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "countdown-numbers-solve" = {
          depends = [
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      tests = {
        "countdown-numbers-test" = {
          depends = [
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }