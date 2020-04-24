{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = true; test-hlint = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ersatz"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "© 2010-2015 Edward A. Kmett, © 2014-2015 Eric Mertens, © 2013 Johan Kiviniemi";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Eric Mertens, Johan Kiviniemi";
      homepage = "http://github.com/ekmett/ersatz";
      url = "";
      synopsis = "A monad for expressing SAT or QSAT problems using observable sharing.";
      description = "A monad for expressing SAT or QSAT problems using observable sharing.\n\nFor example, we can express a full-adder with:\n\n> full_adder :: Bit -> Bit -> Bit -> (Bit, Bit)\n> full_adder a b cin = (s2, c1 || c2)\n>   where (s1,c1) = half_adder a b\n>         (s2,c2) = half_adder s1 cin\n\n> half_adder :: Bit -> Bit -> (Bit, Bit)\n> half_adder a b = (a `xor` b, a && b)\n\n/Longer Examples/\n\nIncluded are a couple of examples included with the distribution.\nNeither are as fast as a dedicated solver for their respective\ndomains, but they showcase how you can solve real world problems\ninvolving 10s or 100s of thousands of variables and constraints\nwith `ersatz`.\n\n@ersatz-sudoku@\n\n> % time ersatz-sudoku\n> Problem:\n> ┌───────┬───────┬───────┐\n> │ 5 3   │   7   │       │\n> │ 6     │ 1 9 5 │       │\n> │   9 8 │       │   6   │\n> ├───────┼───────┼───────┤\n> │ 8     │   6   │     3 │\n> │ 4     │ 8   3 │     1 │\n> │ 7     │   2   │     6 │\n> ├───────┼───────┼───────┤\n> │   6   │       │ 2 8   │\n> │       │ 4 1 9 │     5 │\n> │       │   8   │   7 9 │\n> └───────┴───────┴───────┘\n> Solution:\n> ┌───────┬───────┬───────┐\n> │ 5 3 4 │ 6 7 8 │ 9 1 2 │\n> │ 6 7 2 │ 1 9 5 │ 3 4 8 │\n> │ 1 9 8 │ 3 4 2 │ 5 6 7 │\n> ├───────┼───────┼───────┤\n> │ 8 5 9 │ 7 6 1 │ 4 2 3 │\n> │ 4 2 6 │ 8 5 3 │ 7 9 1 │\n> │ 7 1 3 │ 9 2 4 │ 8 5 6 │\n> ├───────┼───────┼───────┤\n> │ 9 6 1 │ 5 3 7 │ 2 8 4 │\n> │ 2 8 7 │ 4 1 9 │ 6 3 5 │\n> │ 3 4 5 │ 2 8 6 │ 1 7 9 │\n> └───────┴───────┴───────┘\n> ersatz-sudoku  1,13s user 0,04s system 99% cpu 1,179 total\n\n@ersatz-regexp-grid@\n\nThis solves the \\\"regular crossword puzzle\\\" (<https://github.com/ekmett/ersatz/raw/master/notes/grid.pdf grid.pdf>) from the 2013 MIT mystery hunt.\n\n> % time ersatz-regexp-grid\n\n\"SPOILER\"\n\n> ersatz-regexp-grid  2,45s user 0,05s system 99% cpu 2,502 total";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
        buildable = true;
        };
      exes = {
        "ersatz-regexp-grid" = {
          depends = (pkgs.lib).optionals (flags.examples) ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ersatz" or ((hsPkgs.pkgs-errors).buildDepError "ersatz"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim")));
          buildable = if flags.examples then true else false;
          };
        "ersatz-sudoku" = {
          depends = (pkgs.lib).optionals (flags.examples) ([
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ersatz" or ((hsPkgs.pkgs-errors).buildDepError "ersatz"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim")));
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."ersatz" or ((hsPkgs.pkgs-errors).buildDepError "ersatz"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "speed" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ersatz" or ((hsPkgs.pkgs-errors).buildDepError "ersatz"))
            ];
          buildable = true;
          };
        "moore" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ersatz" or ((hsPkgs.pkgs-errors).buildDepError "ersatz"))
            ];
          buildable = true;
          };
        "z001" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ersatz" or ((hsPkgs.pkgs-errors).buildDepError "ersatz"))
            ];
          buildable = true;
          };
        };
      };
    }