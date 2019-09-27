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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "set-cover"; version = "0.0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann, Helmut Podhaisky";
      homepage = "http://hub.darcs.net/thielema/set-cover/";
      url = "";
      synopsis = "Solve exact set cover problems like Sudoku, 8 Queens, Soma Cube, Tetris Cube";
      description = "Solver for exact set cover problems.\nIncluded examples:\nSudoku, Nonogram, 8 Queens, Domino tiling, Mastermind,\nSoma Cube, Tetris Cube, Cube of L's, Logika's Baumeister puzzle.\nThe generic algorithm allows to choose between\nslow but flexible @Set@ from @containers@ package\nand fast but cumbersome bitvectors.\n\nFor getting familiar with the package\nI propose to study the Queen8 example along with \"Math.SetCover.Exact\".\n\nBuild examples with @cabal install -fbuildExamples@.\n\nThe package needs only Haskell 98.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."psqueues" or (buildDepError "psqueues"))
          (hsPkgs."enummapset" or (buildDepError "enummapset"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
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
          buildable = if flags.buildexamples then true else false;
          };
        "soma-cube" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "queen8" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "sudoku-setcover" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "lcube" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."pooled-io" or (buildDepError "pooled-io"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "baumeister" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "lonpos-pyramid" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
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
          buildable = if flags.buildexamples then true else false;
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
          buildable = if flags.buildexamples then true else false;
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
          buildable = if flags.buildexamples then true else false;
          };
        "mastermind" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "pangram" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."set-cover" or (buildDepError "set-cover"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }