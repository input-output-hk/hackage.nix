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
    flags = { examples = true; test-hlint = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ersatz"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "© 2010-2015 Edward A. Kmett, © 2014-2015 Eric Mertens, © 2013 Johan Kiviniemi";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Eric Mertens, Johan Kiviniemi";
      homepage = "http://github.com/ekmett/ersatz";
      url = "";
      synopsis = "A monad for expressing SAT or QSAT problems using observable sharing.";
      description = "A monad for expressing SAT or QSAT problems using observable sharing.\n\nFor example, we can express a full-adder with:\n\n> full_adder :: Bit -> Bit -> Bit -> (Bit, Bit)\n> full_adder a b cin = (s2, c1 || c2)\n>   where (s1,c1) = half_adder a b\n>         (s2,c2) = half_adder s1 cin\n\n> half_adder :: Bit -> Bit -> (Bit, Bit)\n> half_adder a b = (a `xor` b, a && b)\n\n/Longer Examples/\n\nIncluded are a couple of examples included with the distribution.\nNeither are as fast as a dedicated solver for their respective\ndomains, but they showcase how you can solve real world problems\ninvolving 10s or 100s of thousands of variables and constraints\nwith `ersatz`.\n\n@ersatz-sudoku@\n\n> % time ersatz-sudoku\n> Problem:\n> ┌───────┬───────┬───────┐\n> │ 5 3   │   7   │       │\n> │ 6     │ 1 9 5 │       │\n> │   9 8 │       │   6   │\n> ├───────┼───────┼───────┤\n> │ 8     │   6   │     3 │\n> │ 4     │ 8   3 │     1 │\n> │ 7     │   2   │     6 │\n> ├───────┼───────┼───────┤\n> │   6   │       │ 2 8   │\n> │       │ 4 1 9 │     5 │\n> │       │   8   │   7 9 │\n> └───────┴───────┴───────┘\n> Solution:\n> ┌───────┬───────┬───────┐\n> │ 5 3 4 │ 6 7 8 │ 9 1 2 │\n> │ 6 7 2 │ 1 9 5 │ 3 4 8 │\n> │ 1 9 8 │ 3 4 2 │ 5 6 7 │\n> ├───────┼───────┼───────┤\n> │ 8 5 9 │ 7 6 1 │ 4 2 3 │\n> │ 4 2 6 │ 8 5 3 │ 7 9 1 │\n> │ 7 1 3 │ 9 2 4 │ 8 5 6 │\n> ├───────┼───────┼───────┤\n> │ 9 6 1 │ 5 3 7 │ 2 8 4 │\n> │ 2 8 7 │ 4 1 9 │ 6 3 5 │\n> │ 3 4 5 │ 2 8 6 │ 1 7 9 │\n> └───────┴───────┴───────┘\n> ersatz-sudoku  1,13s user 0,04s system 99% cpu 1,179 total\n\n@ersatz-regexp-grid@\n\nThis solves the \\\"regular crossword puzzle\\\" (<grid.pdf>) from the 2013 MIT mystery hunt.\n\n> % time ersatz-regexp-grid\n\n\"SPOILER\"\n\n> ersatz-regexp-grid  2,45s user 0,05s system 99% cpu 2,502 total";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
        };
      exes = {
        "ersatz-regexp-grid" = {
          depends = (pkgs.lib).optionals (flags.examples) ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ersatz" or (buildDepError "ersatz"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim")));
          };
        "ersatz-sudoku" = {
          depends = (pkgs.lib).optionals (flags.examples) ([
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ersatz" or (buildDepError "ersatz"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim")));
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          };
        };
      };
    }