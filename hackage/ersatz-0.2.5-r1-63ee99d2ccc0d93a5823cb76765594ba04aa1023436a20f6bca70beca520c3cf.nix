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
    flags = { examples = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ersatz"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "© 2010-2013 Edward Kmett, © 2013 Johan Kiviniemi";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Johan Kiviniemi";
      homepage = "http://github.com/ekmett/ersatz";
      url = "";
      synopsis = "A monad for expressing SAT or QSAT problems using observable sharing.";
      description = "A monad for expressing SAT or QSAT problems using observable sharing.\n\nFor example, we can express a full-adder with:\n\n> full_adder :: Bit -> Bit -> Bit -> (Bit, Bit)\n> full_adder a b cin = (s2, c1 || c2)\n>   where (s1,c1) = half_adder a b\n>         (s2,c2) = half_adder s1 cin\n\n> half_adder :: Bit -> Bit -> (Bit, Bit)\n> half_adder a b = (a `xor` b, a && b)\n\n/Longer Examples/\n\nIncluded are a couple of examples included with the distribution.\nNeither are as fast as a dedicated solver for their respective\ndomains, but they showcase how you can solve real world problems\ninvolving 10s or 100s of thousands of variables and constraints\nwith `ersatz`.\n\n@ersatz-sudoku@\n\n> % time ersatz-sudoku\n> Problem:\n> ┌───────┬───────┬───────┐\n> │ 5 3   │   7   │       │\n> │ 6     │ 1 9 5 │       │\n> │   9 8 │       │   6   │\n> ├───────┼───────┼───────┤\n> │ 8     │   6   │     3 │\n> │ 4     │ 8   3 │     1 │\n> │ 7     │   2   │     6 │\n> ├───────┼───────┼───────┤\n> │   6   │       │ 2 8   │\n> │       │ 4 1 9 │     5 │\n> │       │   8   │   7 9 │\n> └───────┴───────┴───────┘\n> Solution:\n> ┌───────┬───────┬───────┐\n> │ 5 3 4 │ 6 7 8 │ 9 1 2 │\n> │ 6 7 2 │ 1 9 5 │ 3 4 8 │\n> │ 1 9 8 │ 3 4 2 │ 5 6 7 │\n> ├───────┼───────┼───────┤\n> │ 8 5 9 │ 7 6 1 │ 4 2 3 │\n> │ 4 2 6 │ 8 5 3 │ 7 9 1 │\n> │ 7 1 3 │ 9 2 4 │ 8 5 6 │\n> ├───────┼───────┼───────┤\n> │ 9 6 1 │ 5 3 7 │ 2 8 4 │\n> │ 2 8 7 │ 4 1 9 │ 6 3 5 │\n> │ 3 4 5 │ 2 8 6 │ 1 7 9 │\n> └───────┴───────┴───────┘\n> ersatz-sudoku  1,13s user 0,04s system 99% cpu 1,179 total\n\n@ersatz-regexp-grid@\n\nThis solves the \\\"regular crossword puzzle\\\" (<grid.pdf>) from the 2013 MIT mystery hunt.\n\n> % time ersatz-regexp-grid\n\n\"SPOILER\"\n\n> ersatz-regexp-grid  2,45s user 0,05s system 99% cpu 2,502 total";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-textual" or (errorHandler.buildDepError "blaze-textual"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      exes = {
        "ersatz-regexp-grid" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ersatz" or (errorHandler.buildDepError "ersatz"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
          buildable = if flags.examples then true else false;
        };
        "ersatz-sudoku" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ersatz" or (errorHandler.buildDepError "ersatz"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
            (hsPkgs."ersatz" or (errorHandler.buildDepError "ersatz"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck" or (errorHandler.buildDepError "test-framework-quickcheck"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }