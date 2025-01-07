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
    flags = { buildexamples = false; llvm = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "set-cover"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann, Helmut Podhaisky";
      homepage = "https://hub.darcs.net/thielema/set-cover/";
      url = "";
      synopsis = "Solve exact set cover problems like Sudoku, 8 Queens, Soma Cube, Tetris Cube";
      description = "Solver for exact set cover problems.\nIncluded examples:\nSudoku, Nonogram, 8 Queens, Domino tiling, Mastermind, Alphametics,\nSoma Cube, Tetris Cube, Cube of L's,\nLogika's Baumeister puzzle, Lonpos pyramid, Conway's puzzle.\nThe generic algorithm allows to choose between\nslow but flexible @Set@ from @containers@ package\nand fast but cumbersome bitvectors.\n\nFor getting familiar with the package\nI propose to study the Queen8 example along with \"Math.SetCover.Exact\".\n\nThe Sudoku and Nonogram examples also demonstrate\nhow to interpret the set-cover solution in a human-friendly way.\n\nBuild examples with @cabal install -fbuildExamples@.\n\nThe package needs only Haskell 98.\nThere is also an experimental implementation using LLVM and @knead@.\nDo not rely on that interface in released packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."prelude-compat" or (errorHandler.buildDepError "prelude-compat"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optionals (flags.llvm) [
          (hsPkgs."knead" or (errorHandler.buildDepError "knead"))
          (hsPkgs."llvm-dsl" or (errorHandler.buildDepError "llvm-dsl"))
          (hsPkgs."llvm-extra" or (errorHandler.buildDepError "llvm-extra"))
          (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
          (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
          (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."storable-endian" or (errorHandler.buildDepError "storable-endian"))
          (hsPkgs."bool8" or (errorHandler.buildDepError "bool8"))
          (hsPkgs."lazyio" or (errorHandler.buildDepError "lazyio"))
        ];
        buildable = true;
      };
      exes = {
        "tetris-cube" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."haha" or (errorHandler.buildDepError "haha"))
            (hsPkgs."pooled-io" or (errorHandler.buildDepError "pooled-io"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "soma-cube" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optional (flags.buildexamples) (hsPkgs."containers" or (errorHandler.buildDepError "containers"));
          buildable = if flags.buildexamples then true else false;
        };
        "queen8" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "sudoku-setcover" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."haha" or (errorHandler.buildDepError "haha"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "lcube" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."pooled-io" or (errorHandler.buildDepError "pooled-io"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "baumeister" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optional (flags.buildexamples) (hsPkgs."containers" or (errorHandler.buildDepError "containers"));
          buildable = if flags.buildexamples then true else false;
        };
        "lonpos-pyramid" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optional (flags.buildexamples) (hsPkgs."containers" or (errorHandler.buildDepError "containers"));
          buildable = if flags.buildexamples then true else false;
        };
        "alphametics" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "domino" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."unicode" or (errorHandler.buildDepError "unicode"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "nonogram" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "mastermind-setcover" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "mastermind-knead" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.buildexamples && flags.llvm) [
            (hsPkgs."haha" or (errorHandler.buildDepError "haha"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."lazyio" or (errorHandler.buildDepError "lazyio"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
          buildable = if flags.buildexamples && flags.llvm then true else false;
        };
        "pangram" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optional (flags.buildexamples) (hsPkgs."containers" or (errorHandler.buildDepError "containers"));
          buildable = if flags.buildexamples then true else false;
        };
        "conway-puzzle" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."pooled-io" or (errorHandler.buildDepError "pooled-io"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
      tests = {
        "set-cover-test" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "mastermind-benchmark" = {
          depends = [
            (hsPkgs."set-cover" or (errorHandler.buildDepError "set-cover"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."timeit" or (errorHandler.buildDepError "timeit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }