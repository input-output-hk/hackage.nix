{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      benchmark-uniplate = false;
      template-haskell = true;
      inlining = true;
      old-inline-pragmas = false;
      dump-splices = false;
      test-hunit = true;
      test-properties = true;
      safe = false;
      trustworthy = true;
      transformers2 = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "lens"; version = "3.7.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/lens/";
      url = "";
      synopsis = "Lenses, Folds and Traversals";
      description = "This package comes \\\"Batteries Included\\\" with many useful lenses for the types\ncommonly used from the Haskell Platform, and with tools for automatically\ngenerating lenses and isomorphisms for user-supplied data types.\n\nThe combinators in @Control.Lens@ provide a highly generic toolbox for composing\nfamilies of getters, folds, isomorphisms, traversals, setters and lenses and their\nindexed variants.\n\nAn overview, with a large number of examples can be found in the README.\n\n<https://github.com/ekmett/lens#lens-lenses-folds-and-traversals>\n\nMore information on the care and feeding of lenses, including a brief tutorial and motivation\nfor their types can be found on the lens wiki.\n\n<https://github.com/ekmett/lens/wiki>\n\nA small game that manages its state using lenses can be found in the example folder.\n\n<https://github.com/ekmett/lens/blob/master/examples/Pong.hs>\n\n/Lenses, Folds and Traversals/\n\nThe core of this hierarchy looks like:\n\n<<http://i.imgur.com/FgfVW.png>>\n\nYou can compose any two elements of the hierarchy above using (.) from the Prelude, and you can\nuse any element of the hierarchy as any type it linked to above it.\n\nThe result is their lowest upper bound in the hierarchy (or an error if that bound doesn't exist).\n\nFor instance:\n\n* You can use any 'Traversal' as a 'Fold' or as a 'Setter'.\n\n* The composition of a 'Traversal' and a 'Getter' yields a 'Fold'.\n\n/Minimizing Dependencies/\n\nIf you want to provide lenses and traversals for your own types in your own libraries, then you\ncan do so without incurring a dependency on this (or any other) lens package at all.\n\n/e.g./ for a data type:\n\n> data Foo a = Foo Int Int a\n\nYou can define lenses such as\n\n> -- bar :: Simple Lens (Foo a) Int\n> bar :: Functor f => (Int -> f Int) -> Foo a -> f (Foo a)\n> bar f (Foo a b c) = fmap (\\a' -> Foo a' b c) (f a)\n\n> -- baz :: Lens (Foo a) (Foo b) a b\n> quux :: Functor f => (a -> f b) -> Foo a -> f (Foo b)\n> quux f (Foo a b c) = fmap (Foo a b) (f c)\n\nwithout the need to use any type that isn't already defined in the @Prelude@.\n\nAnd you can define a traversal of multiple fields with 'Control.Applicative.Applicative':\n\n> -- traverseBarAndBaz :: Simple Traversal (Foo a) Int\n> traverseBarAndBaz :: Applicative f => (Int -> f Int) -> Foo a -> f (Foo a)\n> traverseBarAndBaz f (Foo a b c) = Foo <\$> f a <*> f b <*> pure c\n\nWhat is provided in this library is a number of stock lenses and traversals for\ncommon haskell types, a wide array of combinators for working them, and more\nexotic functionality, (/e.g./ getters, setters, indexed folds, isomorphisms).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."comonad-transformers" or ((hsPkgs.pkgs-errors).buildDepError "comonad-transformers"))
          (hsPkgs."comonads-fd" or ((hsPkgs.pkgs-errors).buildDepError "comonads-fd"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          ] ++ [
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ]) ++ (pkgs.lib).optional (flags.template-haskell) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))) ++ (if compiler.isGhc && (compiler.version).ge "7.2"
          then [
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            ]
          else [
            (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
            ]);
        buildable = true;
        };
      tests = {
        "templates" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            ];
          buildable = true;
          };
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if !flags.test-properties then false else true;
          };
        "hunit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            ];
          buildable = if !flags.test-hunit then false else true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."simple-reflect" or ((hsPkgs.pkgs-errors).buildDepError "simple-reflect"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "plated" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.2"
            then [
              (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
              ]
            else [
              (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
              ])) ++ (pkgs.lib).optional (flags.benchmark-uniplate) (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"));
          buildable = true;
          };
        "alongside" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
            (hsPkgs."comonads-fd" or ((hsPkgs.pkgs-errors).buildDepError "comonads-fd"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        "unsafe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
            (hsPkgs."comonads-fd" or ((hsPkgs.pkgs-errors).buildDepError "comonads-fd"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }