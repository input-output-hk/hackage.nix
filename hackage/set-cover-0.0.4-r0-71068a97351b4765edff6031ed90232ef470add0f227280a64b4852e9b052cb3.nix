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
      specVersion = "1.8";
      identifier = { name = "set-cover"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann, Helmut Podhaisky";
      homepage = "http://code.haskell.org/~thielema/set-cover/";
      url = "";
      synopsis = "Solve exact set cover problems like Sudoku, 8 Queens, Soma Cube, Tetris Cube";
      description = "Solver for exact set cover problems.\nIncluded examples:\nSudoku, 8 Queens,\nSoma Cube, Tetris Cube, Cube of L's, Logika's Baumeister puzzle.\nGeneric algorithm allows to choose between\nslow but flexible @Set@ from @containers@ package\nand fast but cumbersome bitvectors.\n\nBuild examples with @cabal install -fbuildExamples@.\n\nThe package needs only Haskell 98.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "tetris-cube" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "soma-cube" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "queen8" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "sudoku-setcover" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "lcube" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "baumeister" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alphametics" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "domino" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }