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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "exact-cover"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017, Arthur Lee";
      maintainer = "me@arthur.li";
      author = "Arthur Lee";
      homepage = "https://github.com/arthurl/exact-cover";
      url = "";
      synopsis = "Efficient exact cover solver.";
      description = "Fast solver for exact set cover problems\n(<http://en.wikipedia.org/wiki/Exact_cover>) using Algorithm X as described in\nthe paper /Dancing Links/, by Donald Knuth, in\n/Millennial Perspectives in Computer Science/, P159, 2000\n(<https://arxiv.org/abs/cs/0011047>).\n\nTo get started, see the documentation for the \"Math.ExactCover\" module below.\n\nBuild examples with @cabal install -fbuildExamples@ or @stack build --flag\nexact-cover:buildExamples@. Examples include a Sudoku solver.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "sudoku" = {
          depends = [
            (hsPkgs."exact-cover" or (errorHandler.buildDepError "exact-cover"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."exact-cover" or (errorHandler.buildDepError "exact-cover"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }