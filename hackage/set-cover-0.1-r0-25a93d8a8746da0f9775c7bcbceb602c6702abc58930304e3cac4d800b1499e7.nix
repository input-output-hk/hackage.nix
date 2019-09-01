let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; llvm = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "set-cover"; version = "0.1"; };
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
          (hsPkgs."psqueues" or (buildDepError "psqueues"))
          (hsPkgs."enummapset" or (buildDepError "enummapset"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."non-empty" or (buildDepError "non-empty"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."prelude-compat" or (buildDepError "prelude-compat"))
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optionals (flags.llvm) [
          (hsPkgs."knead" or (buildDepError "knead"))
          (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
          (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
          (hsPkgs."tfp" or (buildDepError "tfp"))
          (hsPkgs."comfort-array" or (buildDepError "comfort-array"))
          (hsPkgs."storable-endian" or (buildDepError "storable-endian"))
          (hsPkgs."bool8" or (buildDepError "bool8"))
          (hsPkgs."lazyio" or (buildDepError "lazyio"))
          ];
        };
      exes = {
        "tetris-cube" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."haha" or (buildDepError "haha"))
            (hsPkgs."pooled-io" or (buildDepError "pooled-io"))
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "soma-cube" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "queen8" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "sudoku-setcover" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."haha" or (buildDepError "haha"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "lcube" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."pooled-io" or (buildDepError "pooled-io"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "baumeister" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "lonpos-pyramid" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "alphametics" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "domino" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."unicode" or (buildDepError "unicode"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "nonogram" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."psqueues" or (buildDepError "psqueues"))
            (hsPkgs."enummapset" or (buildDepError "enummapset"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "mastermind-setcover" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."enummapset" or (buildDepError "enummapset"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "mastermind-knead" = {
          depends = (pkgs.lib).optionals (flags.buildexamples && flags.llvm) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."haha" or (buildDepError "haha"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."lazyio" or (buildDepError "lazyio"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."enummapset" or (buildDepError "enummapset"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          libs = [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
          };
        "pangram" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "conway-puzzle" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."pooled-io" or (buildDepError "pooled-io"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      tests = {
        "set-cover-test" = {
          depends = [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."enummapset" or (buildDepError "enummapset"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      benchmarks = {
        "mastermind-benchmark" = {
          depends = [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."timeit" or (buildDepError "timeit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."enummapset" or (buildDepError "enummapset"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }