{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; llvm = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "set-cover"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann, Helmut Podhaisky";
      homepage = "http://hub.darcs.net/thielema/set-cover/";
      url = "";
      synopsis = "Solve exact set cover problems like Sudoku, 8 Queens, Soma Cube, Tetris Cube";
      description = "Solver for exact set cover problems.\nIncluded examples:\nSudoku, Nonogram, 8 Queens, Domino tiling, Mastermind, Alphametics,\nSoma Cube, Tetris Cube, Cube of L's,\nLogika's Baumeister puzzle, Lonpos pyramid, Conway's puzzle.\nThe generic algorithm allows to choose between\nslow but flexible @Set@ from @containers@ package\nand fast but cumbersome bitvectors.\n\nFor getting familiar with the package\nI propose to study the Queen8 example along with \"Math.SetCover.Exact\".\n\nThe Sudoku and Nonogram examples also demonstrate\nhow to interpret the set-cover solution in a human-friendly way.\n\nBuild examples with @cabal install -fbuildExamples@.\n\nThe package needs only Haskell 98.\nThere is also an experimental implementation using LLVM and @knead@.\nDo not rely on that interface in released packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."psqueues" or ((hsPkgs.pkgs-errors).buildDepError "psqueues"))
          (hsPkgs."enummapset" or ((hsPkgs.pkgs-errors).buildDepError "enummapset"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."prelude-compat" or ((hsPkgs.pkgs-errors).buildDepError "prelude-compat"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (pkgs.lib).optionals (flags.llvm) [
          (hsPkgs."knead" or ((hsPkgs.pkgs-errors).buildDepError "knead"))
          (hsPkgs."llvm-extra" or ((hsPkgs.pkgs-errors).buildDepError "llvm-extra"))
          (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
          (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
          (hsPkgs."comfort-array" or ((hsPkgs.pkgs-errors).buildDepError "comfort-array"))
          (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
          (hsPkgs."storable-endian" or ((hsPkgs.pkgs-errors).buildDepError "storable-endian"))
          (hsPkgs."bool8" or ((hsPkgs.pkgs-errors).buildDepError "bool8"))
          (hsPkgs."lazyio" or ((hsPkgs.pkgs-errors).buildDepError "lazyio"))
          ];
        buildable = true;
        };
      exes = {
        "tetris-cube" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."haha" or ((hsPkgs.pkgs-errors).buildDepError "haha"))
            (hsPkgs."pooled-io" or ((hsPkgs.pkgs-errors).buildDepError "pooled-io"))
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "soma-cube" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "queen8" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "sudoku-setcover" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."haha" or ((hsPkgs.pkgs-errors).buildDepError "haha"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "lcube" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."pooled-io" or ((hsPkgs.pkgs-errors).buildDepError "pooled-io"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "baumeister" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "lonpos-pyramid" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "alphametics" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "domino" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."unicode" or ((hsPkgs.pkgs-errors).buildDepError "unicode"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "nonogram" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."psqueues" or ((hsPkgs.pkgs-errors).buildDepError "psqueues"))
            (hsPkgs."enummapset" or ((hsPkgs.pkgs-errors).buildDepError "enummapset"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "mastermind-setcover" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."enummapset" or ((hsPkgs.pkgs-errors).buildDepError "enummapset"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "mastermind-knead" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.llvm) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."haha" or ((hsPkgs.pkgs-errors).buildDepError "haha"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."lazyio" or ((hsPkgs.pkgs-errors).buildDepError "lazyio"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."enummapset" or ((hsPkgs.pkgs-errors).buildDepError "enummapset"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          libs = [
            (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
            ];
          buildable = if flags.buildexamples && flags.llvm then true else false;
          };
        "pangram" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "conway-puzzle" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."pooled-io" or ((hsPkgs.pkgs-errors).buildDepError "pooled-io"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      tests = {
        "set-cover-test" = {
          depends = [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."enummapset" or ((hsPkgs.pkgs-errors).buildDepError "enummapset"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "mastermind-benchmark" = {
          depends = [
            (hsPkgs."set-cover" or ((hsPkgs.pkgs-errors).buildDepError "set-cover"))
            (hsPkgs."timeit" or ((hsPkgs.pkgs-errors).buildDepError "timeit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."enummapset" or ((hsPkgs.pkgs-errors).buildDepError "enummapset"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }